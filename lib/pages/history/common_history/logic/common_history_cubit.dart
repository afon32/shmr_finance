import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shmr_finance/di/app_scope_locator.dart';
import 'package:shmr_finance/features/transactions/data/dto/get_transaction_by_period_use_case_request.dart';
import 'package:shmr_finance/features/transactions/domain/use_cases/get_transactions_history_by_period_use_case.dart';
import 'package:shmr_finance/pages/history/types/history_page_type.dart';
import 'package:shmr_finance/pages/history/types/sort_type.dart';

import 'common_history_view_model.dart';

part 'common_history_state.dart';
part 'common_history_cubit.freezed.dart';

class CommonHistoryCubit extends Cubit<CommonHistoryState> {
  final HistoryPageType pageType;
  late final GetTransactionsHistoryByPeriodUseCase _useCase;

  CommonHistoryCubit({required this.pageType})
      : super(CommonHistoryState.loading()) {
    switch (pageType) {
      case HistoryPageType.expences:
        _useCase = AppScopeLocator
            .appScope.getOutcomesTransactionsByPeriodUseCaseDep.get;
      case HistoryPageType.incomes:
        _useCase = AppScopeLocator
            .appScope.getIncomesTransactionsByPeriodUseCaseDep.get;
    }
  }
  SortType _currentSortType = SortType.none;

  void getHistory(DateTime startDate, DateTime endDate) async {
    print(startDate.toString());
    emit(CommonHistoryState.loading());
    final request = GetTransactionByPeriodUseCaseRequest(
        accountId: 1, //mock
        startDate: startDate,
        endDate: endDate);
    try {
      final response = await _useCase.execute(request);

      final result = await compute(
          CommonHistoryViewModel.fromTransactionDetails, response);
      
      // sort(_currentSortType, result);

      emit(CommonHistoryState.content(result, SortType.none));
    } on Exception catch (e) {
      emit(CommonHistoryState.error(e));
    }
  }

  /// метод пока корявый, потом поправлю
  void sort(SortType type, [CommonHistoryViewModel? viewModel]) async {
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
      final afterSorting = await compute(CommonHistoryViewModel.sort, argsMap);
      emit(CommonHistoryState.content(afterSorting, type));
    } else if (state is Loading &&
        viewModel != null &&
        type != _currentSortType) {
      final beforeSorting = viewModel;
      // emit(IncomesHistoryState.loading());
      final argsMap = Map()
        ..addAll({
          'type': type,
          'total': beforeSorting.total,
          'items': beforeSorting.items
        });
      final afterSorting = await compute(CommonHistoryViewModel.sort, argsMap);
      emit(CommonHistoryState.content(afterSorting, type));
    }
  }
}
