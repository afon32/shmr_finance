import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shmr_finance/di/app_scope.dart';
import 'package:shmr_finance/features/transactions/data/dto/get_transaction_by_period_use_case_request.dart';
import 'package:shmr_finance/features/transactions/domain/use_cases/get_transactions_history_by_period_use_case.dart';
import 'package:shmr_finance/pages/common/history/types/history_page_type.dart';

import 'history_today_view_model.dart';

part 'history_today_state.dart';
part 'history_today_cubit.freezed.dart';

class HistoryTodayCubit extends Cubit<HistoryTodayState> {
  final HistoryPageType pageType;
  final AppScopeContainer scopeContainer;
  late final GetTransactionsHistoryByPeriodUseCase _useCase;

  HistoryTodayCubit({required this.pageType, required this.scopeContainer})
      : super(HistoryTodayState.loading()) {
    switch (pageType) {
      case HistoryPageType.expences:
        _useCase = scopeContainer.getOutcomesTransactionsByPeriodUseCaseDep.get;
      case HistoryPageType.incomes:
        _useCase = scopeContainer.getIncomesTransactionsByPeriodUseCaseDep.get;
    }
  }

  void getHistory() async {
    emit(HistoryTodayState.loading());
    final request = GetTransactionByPeriodUseCaseRequest(
        accountId: 1, // mock
        startDate: DateTime.now().copyWith(hour: 0, minute: 0),
        endDate: DateTime.now().copyWith(hour: 0, minute: 0));
    try {
      final response = await _useCase.execute(request);

      final result =
          await compute(HistoryTodayViewModel.fromTransactionDetails, response);

      emit(HistoryTodayState.content(result));
    } on Exception catch (e) {
      emit(HistoryTodayState.error(e));
    }
  }
}
