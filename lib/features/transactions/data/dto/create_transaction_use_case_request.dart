import 'package:shmr_finance/data/dto/requests/export.dart';

class CreateTransactionUseCaseRequest {
  final int accountId;
  final int categoryId;
  final double amount;
  final DateTime transactionDate;
  final String? comment;

  CreateTransactionUseCaseRequest(
      {required this.accountId,
      required this.categoryId,
      required this.amount,
      required this.transactionDate,
      required this.comment});
}

extension CreateTransactionUseCaseRequestX on CreateTransactionUseCaseRequest {
  ApiTransactionRequest toData() => ApiTransactionRequest(
      accountId: accountId,
      categoryId: categoryId,
      amount: amount.toString(),
      transactionDate: transactionDate.toString(),
      comment: comment);
}
