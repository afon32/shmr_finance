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
import 'package:shmr_finance/pages/common/history/types/sort_type.dart';

import 'common_history_view_model.dart';

part 'common_history_state.dart';
part 'common_history_cubit.freezed.dart';

class CommonHistoryCubit extends Cubit<CommonHistoryState> {
  final HistoryPageType pageType;
  final AppScopeContainer scopeContainer;
  late final GetTransactionsHistoryByPeriodUseCase _useCase;
  late final UpdateTransactionUseCase _updateTransactionUseCase;
  late final CreateTransactionUseCase _createTransactionUseCase;
  late final DeleteTransactionUseCase _deleteTransactionUseCase;

  CommonHistoryCubit({required this.pageType, required this.scopeContainer})
      : super(CommonHistoryState.loading()) {
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
  SortType _currentSortType = SortType.none;

  Future<void> getHistory(DateTime startDate, DateTime endDate) async {
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
