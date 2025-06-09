import 'package:shmr_finance/model/common_enums/currency_enum.dart';

class AccountBrief {
  final int id;
  final String name;
  final String balance;
  final Currency currency;

  AccountBrief(
      {required this.id,
      required this.name,
      required this.balance,
      required this.currency});
}
