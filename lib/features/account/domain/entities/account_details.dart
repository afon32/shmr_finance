import 'package:shmr_finance/model/common_enums/currency_enum.dart';

import 'stat_item.dart';

class AccountDetails {
  final int id;
  final String name;
  final double balance;
  final Currency currency;
  final List<StatItem> incomeStats;
  final List<StatItem> expenseStats;
  final DateTime createdAt;
  final DateTime updatedAt;

  AccountDetails(
      {required this.id,
      required this.name,
      required this.balance,
      required this.currency,
      required this.incomeStats,
      required this.expenseStats,
      required this.createdAt,
      required this.updatedAt});
}
