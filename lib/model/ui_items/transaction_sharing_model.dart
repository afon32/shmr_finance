import 'account_item.dart';
import 'category_item.dart';

class TransactionSharingModel {
  final int? id;
  final AccountItem? scoreItem;
  final CategoryItem? categoryItem;
  final double? amount;
  final DateTime date;
  final String? comment;

  TransactionSharingModel(
      {this.id,
      required this.scoreItem,
      required this.categoryItem,
      required this.amount,
      required this.date,
      required this.comment});
}
