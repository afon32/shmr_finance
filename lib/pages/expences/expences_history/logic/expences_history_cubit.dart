import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shmr_finance/di/app_scope_locator.dart';
import 'package:shmr_finance/features/transactions/data/dto/get_transaction_by_period_use_case_request.dart';
import 'package:shmr_finance/features/transactions/domain/use_cases/get_outcomes_transactions_history_by_period_use_case.dart';

import 'expences_history_view_model.dart';
import 'expences_sort_type.dart';

part 'expences_history_state.dart';
part 'expences_history_cubit.freezed.dart';

class ExpencesHistoryCubit extends Cubit<ExpencesHistoryState> {
  late final GetOutcomesTransactionsHistoryByPeriodUseCase _useCase;

  ExpencesHistoryCubit() : super(ExpencesHistoryState.loading()) {
    _useCase =
        AppScopeLocator.appScope.getOutcomesTransactionsByPeriodUseCaseDep.get;
  }
  ExpencesSortType _currentSortType = ExpencesSortType.amountIncrease;

  void getHistory(DateTime startDate, DateTime endDate) async {
    print(startDate.toString());
    emit(ExpencesHistoryState.loading());
    final request = GetTransactionByPeriodUseCaseRequest(
        accountId: 1, startDate: startDate, endDate: endDate); //mock
    try {
      final response = await _useCase.execute(request);

      final result = await compute(
          ExpencesHistoryViewModel.fromTransactionDetails, response);

      emit(ExpencesHistoryState.content(result, ExpencesSortType.none));
    } on Exception catch (e) {
      emit(ExpencesHistoryState.error(e));
    }
  }

  void sort(ExpencesSortType type) async {
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
      final afterSorting = await compute(ExpencesHistoryViewModel.sort, argsMap);
      emit(ExpencesHistoryState.content(afterSorting, type));
    }
  }
}
