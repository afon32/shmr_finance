import 'package:shmr_finance/data/dto/requests/transaction_request/transaction_request.dart';

class UpdateTransactionUseCaseRequest {
  final int id;
  final int accountId;
  final int categoryId;
  final double amount;
  final DateTime transactionDate;
  final String? comment;

  UpdateTransactionUseCaseRequest(
      {required this.id,
      required this.accountId,
      required this.categoryId,
      required this.amount,
      required this.transactionDate,
      required this.comment});
}

extension UpdateTransactionUseCaseRequestX on UpdateTransactionUseCaseRequest {
  ApiTransactionRequest toData() => ApiTransactionRequest(
      accountId: accountId,
      categoryId: categoryId,
      amount: amount.toString(),
      transactionDate: transactionDate.toString(),
      comment: comment);
}
