import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shmr_finance/di/app_scope.dart';
import 'package:shmr_finance/features/transactions/data/dto/get_transaction_by_period_use_case_request.dart';
import 'package:shmr_finance/features/transactions/domain/use_cases/get_transactions_history_by_period_use_case.dart';
import 'package:shmr_finance/pages/common/history/types/history_page_type.dart';

import 'analyze_view_model.dart';

part 'analyze_state.dart';
part 'analyze_cubit.freezed.dart';

class AnalyzeCubit extends Cubit<AnalyzeState> {
  final HistoryPageType pageType;
  final AppScopeContainer scopeContainer;
  late final GetTransactionsHistoryByPeriodUseCase _useCase;
  AnalyzeViewModel? _previousViewModel;

  AnalyzeCubit({required this.pageType, required this.scopeContainer})
      : super(AnalyzeState.loading()) {
    switch (pageType) {
      case HistoryPageType.expences:
        _useCase = scopeContainer.getOutcomesTransactionsByPeriodUseCaseDep.get;
      case HistoryPageType.incomes:
        _useCase = scopeContainer.getIncomesTransactionsByPeriodUseCaseDep.get;
    }
  }

  void getHistory(DateTime startDate, DateTime endDate) async {
    if (state is Content) {
      _previousViewModel = (state as Content).content;
    }
    emit(AnalyzeState.loading());
    final request = GetTransactionByPeriodUseCaseRequest(
        accountId: 1, //mock
        startDate: startDate,
        endDate: endDate);
    try {
      final response = await _useCase.execute(request);

      final result =
          await compute(AnalyzeViewModel.fromTransactionDetails, response);

      emit(AnalyzeState.content(result, _previousViewModel));
    } on Exception catch (e) {
      emit(AnalyzeState.error(e));
    }
  }
}
