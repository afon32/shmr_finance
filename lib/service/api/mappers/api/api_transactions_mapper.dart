import 'package:shmr_finance/data/dto/requests/export.dart';
import 'package:shmr_finance/features/transactions/domain/entities/transaction.dart';

extension ApiTransactionsX on ApiTransaction {
  Transaction toDomain() => Transaction(
      id: id,
      accountId: accountId,
      amount: double.tryParse(amount) ?? 0.0,
      transactionDate: DateTime.parse(transactionDate),
      comment: comment,
      createdAt: DateTime.parse(createdAt),
      updatedAt: DateTime.parse(updatedAt));
}
