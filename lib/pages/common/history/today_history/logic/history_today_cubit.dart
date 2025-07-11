import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shmr_finance/di/app_scope.dart';
import 'package:shmr_finance/features/transactions/data/dto/create_transaction_use_case_request.dart';
import 'package:shmr_finance/features/transactions/data/dto/get_transaction_by_period_use_case_request.dart';
import 'package:shmr_finance/features/transactions/data/dto/update_transaction_use_case_request.dart';
import 'package:shmr_finance/features/transactions/domain/use_cases/create_transaction_use_case.dart';
import 'package:shmr_finance/features/transactions/domain/use_cases/delete_transaction_use_case.dart';
import 'package:shmr_finance/features/transactions/domain/use_cases/get_transactions_history_by_period_use_case.dart';
import 'package:shmr_finance/features/transactions/domain/use_cases/update_transaction_use_case.dart';
import 'package:shmr_finance/pages/common/history/types/history_page_type.dart';

import 'history_today_view_model.dart';

part 'history_today_state.dart';
part 'history_today_cubit.freezed.dart';

class HistoryTodayCubit extends Cubit<HistoryTodayState> {
  final HistoryPageType pageType;
  final AppScopeContainer scopeContainer;
  late final GetTransactionsHistoryByPeriodUseCase _useCase;
  late final UpdateTransactionUseCase _updateTransactionUseCase;
  late final CreateTransactionUseCase _createTransactionUseCase;
  late final DeleteTransactionUseCase _deleteTransactionUseCase;

  HistoryTodayCubit({required this.pageType, required this.scopeContainer})
      : super(HistoryTodayState.loading()) {
    switch (pageType) {
      case HistoryPageType.expences:
        _useCase = scopeContainer.getOutcomesTransactionsByPeriodUseCaseDep.get;
      case HistoryPageType.incomes:
        _useCase = scopeContainer.getIncomesTransactionsByPeriodUseCaseDep.get;
    }
    _updateTransactionUseCase = scopeContainer.updateTransactionsUseCaseDep.get;
    _createTransactionUseCase = scopeContainer.createTransactionsUseCaseDep.get;
    _deleteTransactionUseCase = scopeContainer.deleteTransactionsUseCaseDep.get;
  }

  Future<void> getHistory() async {
    emit(HistoryTodayState.loading());
    final request = GetTransactionByPeriodUseCaseRequest(
        accountId: 1, // mock
        startDate: DateTime.now().copyWith(hour: 0, minute: 0),
        endDate: DateTime.now().copyWith(hour: 23, minute: 59));
    try {
      final response = await _useCase.execute(request);

      final result =
          await compute(HistoryTodayViewModel.fromTransactionDetails, response);

      emit(HistoryTodayState.content(result));
    } on Exception catch (e) {
      emit(HistoryTodayState.error(e));
    }
  }

  Future<void> updateBuy(int buyId, int accountId, int categoryId, double amount,
      DateTime date, String? comment) async {
    try {
      final request = UpdateTransactionUseCaseRequest(
          id: buyId,
          accountId: accountId,
          categoryId: categoryId,
          amount: amount,
          transactionDate: date,
          comment: comment);

      await _updateTransactionUseCase.execute(request);
    } on Exception catch (e) {}
  }

  Future<void> createBuy(int accountId, int categoryId, double amount, DateTime date,
      String? comment) async {
    try {
      final request = CreateTransactionUseCaseRequest(
          accountId: accountId,
          categoryId: categoryId,
          amount: amount,
          transactionDate: date,
          comment: comment);
      await _createTransactionUseCase.execute(request);
    } on Exception catch (e) {}
  }

  Future<void> deleteBuy(int id) async {
    try {
      await _deleteTransactionUseCase.execute(id);
    } on Exception catch (e) {}
  }
}
