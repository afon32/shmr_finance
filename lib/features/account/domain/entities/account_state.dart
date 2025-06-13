import 'package:shmr_finance/model/common_enums/currency_enum.dart';


class AccountState {
  final int id;
  final String name;
  final String balance;
  final Currency currency;

  AccountState(
      {required this.id,
      required this.name,
      required this.balance,
      required this.currency});
}
