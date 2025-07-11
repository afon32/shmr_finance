import 'package:shmr_finance/features/transactions/data/dto/create_transaction_use_case_request.dart';
import 'package:shmr_finance/features/transactions/data/dto/get_transaction_by_period_use_case_request.dart';

import 'package:shmr_finance/features/transactions/data/dto/update_transaction_use_case_request.dart';

import 'package:shmr_finance/features/transactions/domain/entities/transaction.dart';

import 'package:shmr_finance/features/transactions/domain/entities/transaction_details.dart';
import 'package:shmr_finance/service/api/api_util.dart';

import '../domain/repositories/transactions_repository.dart';

class TransactionsRepositoryImpl implements TransactionsRepository {
  final ApiUtil _apiUtil;

  TransactionsRepositoryImpl({required ApiUtil apiUtil}) : _apiUtil = apiUtil;

  @override
  Future<Transaction> createTransaction(
      CreateTransactionUseCaseRequest request) async {
    return await _apiUtil.createNewTransaction(request);
  }

  @override
  Future<bool> deleteTransaction(id) {
    return _apiUtil.deleteTransaction(id);
  }

  @override
  Future<TransactionDetails> getTransactionById(int id) {
    _apiUtil.getTransactionById(id);
    throw UnimplementedError();
  }

  @override
  Future<List<TransactionDetails>> getIncomesTransactionHistoryByPeriod(
      GetTransactionByPeriodUseCaseRequest request) async {
    final response = await _apiUtil.getTransactionByPeriod(request);
    final result = response
        .where((e) => e.category != null && e.category!.isIncome)
        .toList();
    return result;
  }

  @override
  Future<List<TransactionDetails>> getOutcomesTransactionHistoryByPeriod(
      GetTransactionByPeriodUseCaseRequest request) async {
    final response = await _apiUtil.getTransactionByPeriod(request);
    final result = response
        .where((e) => e.category != null && !e.category!.isIncome)
        .toList();
    return result;
  }

  @override
  Future<TransactionDetails> updateTransaction(
      UpdateTransactionUseCaseRequest request) {
    return _apiUtil.updateTransaction(request);
  }
}
