import 'package:shmr_finance/model/common_enums/currency_enum.dart';

import 'account_history_item.dart';

class AccountHistory {
  final int accountId;
  final String accountName;
  final Currency currency;
  final double currentBalance;
  final List<AccountHistoryItem> history;

  AccountHistory(
      {required this.accountId,
      required this.accountName,
      required this.currency,
      required this.currentBalance,
      required this.history});
}
