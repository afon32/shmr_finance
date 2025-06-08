import 'common/currency_enum.dart';

class Account {
  final int id;
  final int userId;
  final String name;
  final double balance;
  final Currency currency;
  final DateTime createdAt;
  final DateTime updatedAt;

  Account(
      {required this.id,
      required this.userId,
      required this.name,
      required this.balance,
      required this.currency,
      required this.createdAt,
      required this.updatedAt});
}
