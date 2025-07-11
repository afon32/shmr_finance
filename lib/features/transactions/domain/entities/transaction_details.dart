import 'package:shmr_finance/model/category.dart';

import 'transaction_account_brief.dart';

class TransactionDetails {
  final int id;
  final AccountBrief account;
  final Category category;
  final double amount;
  final DateTime transactionDate;
  final String? comment;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  TransactionDetails(
      {required this.id,
      required this.account,
      required this.category,
      required this.amount,
      required this.transactionDate,
      required this.comment,
      required this.createdAt,
      required this.updatedAt});
}
