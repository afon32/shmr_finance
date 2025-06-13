
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


