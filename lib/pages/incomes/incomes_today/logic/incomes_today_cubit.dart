import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shmr_finance/di/app_scope_locator.dart';
import 'package:shmr_finance/features/transactions/data/dto/get_transaction_by_period_use_case_request.dart';
import 'package:shmr_finance/features/transactions/domain/use_cases/get_incomes_transactions_history_by_period_use_case.dart';

import 'incomes_today_view_model.dart';

part 'incomes_today_state.dart';
part 'incomes_today_cubit.freezed.dart';

class IncomesTodayCubit extends Cubit<IncomesTodayState> {
  late final GetIncomesTransactionsHistoryByPeriodUseCase _useCase;

  IncomesTodayCubit() : super(IncomesTodayState.loading()) {
    _useCase = AppScopeLocator.appScope.getIncomesTransactionsByPeriodUseCaseDep.get;
  }

  void getHistory() async {
    emit(IncomesTodayState.loading());
    final request = GetTransactionByPeriodUseCaseRequest(
        accountId: 1, startDate: DateTime.now(), endDate: DateTime.now()); //mock
    try {
      final response = await _useCase.execute(request);

      final result = await compute(
          IncomesTodayViewModel.fromTransactionDetails, response);

      emit(IncomesTodayState.content(result));
    } on Exception catch (e) {
      emit(IncomesTodayState.error(e));
    }
  }
}
