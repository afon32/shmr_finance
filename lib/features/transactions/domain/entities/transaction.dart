class Transaction {
  final int id;
  final int accountId;
  final double amount;
  final DateTime transactionDate;
  final String? comment;
  final DateTime createdAt;
  final DateTime updatedAt;

  Transaction(
      {required this.id,
      required this.accountId,
      required this.amount,
      required this.transactionDate,
      required this.comment,
      required this.createdAt,
      required this.updatedAt});
}
