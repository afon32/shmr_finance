import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shmr_finance/di/app_scope_locator.dart';
import 'package:shmr_finance/features/transactions/data/dto/get_transaction_by_period_use_case_request.dart';
import 'package:shmr_finance/features/transactions/domain/use_cases/get_outcomes_transactions_history_by_period_use_case.dart';

import 'expences_today_view_model.dart';

part 'expences_today_state.dart';
part 'expences_today_cubit.freezed.dart';

class ExpencesTodayCubit extends Cubit<ExpencesTodayState> {
  late final GetOutcomesTransactionsHistoryByPeriodUseCase _useCase;

  ExpencesTodayCubit() : super(ExpencesTodayState.loading()) {
    _useCase =
        AppScopeLocator.appScope.getOutcomesTransactionsByPeriodUseCaseDep.get;
  }

  void getHistory() async {
    emit(ExpencesTodayState.loading());
    final request = GetTransactionByPeriodUseCaseRequest(
        accountId: 1,
        startDate: DateTime.now(),
        endDate: DateTime.now()); //mock
    try {
      final response = await _useCase.execute(request);

      final result = await compute(
          ExpencesTodayViewModel.fromTransactionDetails, response);

      emit(ExpencesTodayState.content(result));
    } on Exception catch (e) {
      emit(ExpencesTodayState.error(e));
    }
  }
}
