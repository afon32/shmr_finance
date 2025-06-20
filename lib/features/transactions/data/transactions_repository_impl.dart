import 'package:shmr_finance/features/transactions/data/dto/create_transaction_use_case_request.dart';
import 'package:shmr_finance/features/transactions/data/dto/get_transaction_by_period_use_case_request.dart';

import 'package:shmr_finance/features/transactions/data/dto/update_transaction_use_case_request.dart';

import 'package:shmr_finance/features/transactions/domain/entities/transaction.dart';

import 'package:shmr_finance/features/transactions/domain/entities/transaction_details.dart';
import 'package:shmr_finance/service/api_util.dart';

import '../domain/repositories/transactions_repository.dart';

class TransactionsRepositoryImpl implements TransactionsRepository {
  final ApiUtil _apiUtil;

  TransactionsRepositoryImpl({required ApiUtil apiUtil}) : _apiUtil = apiUtil;

  @override
  Future<Transaction> createTransaction(
      CreateTransactionUseCaseRequest request) {
    _apiUtil.createNewTransaction(request);
    throw UnimplementedError();
  }

  @override
  Future<bool> deleteTransaction(id) {
    _apiUtil.deleteTransaction(id);
    throw UnimplementedError();
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
    final result = response.where((e) => e.category.isIncome).toList();
    return result;
  }

  @override
  Future<List<TransactionDetails>> getOutcomesTransactionHistoryByPeriod(
      GetTransactionByPeriodUseCaseRequest request) async {
    final response = await _apiUtil.getTransactionByPeriod(request);
    final result = response.where((e) => !e.category.isIncome).toList();
    return result;
  }

  @override
  Future<TransactionDetails> updateTransaction(
      UpdateTransactionUseCaseRequest request) {
    _apiUtil.updateTransaction(request);
    throw UnimplementedError();
  }
}
