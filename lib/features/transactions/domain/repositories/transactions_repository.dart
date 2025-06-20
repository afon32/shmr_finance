import 'package:shmr_finance/features/transactions/data/dto/get_transaction_by_period_use_case_request.dart';

import '../../data/dto/create_transaction_use_case_request.dart';
import '../../data/dto/update_transaction_use_case_request.dart';
import '../entities/transaction.dart';
import '../entities/transaction_details.dart';

abstract class TransactionsRepository {
  Future<Transaction> createTransaction(
      CreateTransactionUseCaseRequest request);

  Future<TransactionDetails> getTransactionById(int id);

  Future<TransactionDetails> updateTransaction(
      UpdateTransactionUseCaseRequest request);

  Future<bool> deleteTransaction(id);

  Future<List<TransactionDetails>> getIncomesTransactionHistoryByPeriod(GetTransactionByPeriodUseCaseRequest request);

  Future<List<TransactionDetails>> getOutcomesTransactionHistoryByPeriod(GetTransactionByPeriodUseCaseRequest request);
}
