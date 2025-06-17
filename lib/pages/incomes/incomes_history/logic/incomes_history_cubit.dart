import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shmr_finance/di/app_scope_locator.dart';
import 'package:shmr_finance/features/transactions/data/dto/get_transaction_by_period_use_case_request.dart';
import 'package:shmr_finance/features/transactions/domain/use_cases/get_incomes_transactions_history_by_period_use_case.dart';

import 'incomes_history_view_model.dart';
import 'incomes_sort_type.dart';

part 'incomes_history_state.dart';
part 'incomes_history_cubit.freezed.dart';

class IncomesHistoryCubit extends Cubit<IncomesHistoryState> {
  late final GetIncomesTransactionsHistoryByPeriodUseCase _useCase;

  IncomesHistoryCubit() : super(IncomesHistoryState.loading()) {
    _useCase =
        AppScopeLocator.appScope.getIncomesTransactionsByPeriodUseCaseDep.get;
  }
  IncomesSortType _currentSortType = IncomesSortType.amountIncrease;

  void getHistory(DateTime startDate, DateTime endDate) async {
    print(startDate.toString());
    emit(IncomesHistoryState.loading());
    final request = GetTransactionByPeriodUseCaseRequest(
        accountId: 1, startDate: startDate, endDate: endDate); //mock
    try {
      final response = await _useCase.execute(request);

      final result = await compute(
          IncomesHistoryViewModel.fromTransactionDetails, response);

      emit(IncomesHistoryState.content(result, IncomesSortType.none));
    } on Exception catch (e) {
      emit(IncomesHistoryState.error(e));
    }
  }

  void sort(IncomesSortType type) async {
    if (state is Content && type != _currentSortType) {
      _currentSortType = type;
      final beforeSorting = (state as Content).content;
      // emit(IncomesHistoryState.loading());
      final argsMap = Map()
        ..addAll({
          'type': type,
          'total': beforeSorting.total,
          'items': beforeSorting.items
        });
      final afterSorting = await compute(IncomesHistoryViewModel.sort, argsMap);
      emit(IncomesHistoryState.content(afterSorting, type));
    }
  }
}
