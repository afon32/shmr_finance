import 'account_state.dart';
import 'change_type_enum.dart';

class AccountHistoryItem {
  final int id;
  final ChangeType changeType;
  final AccountState previousState;
  final AccountState newState;
  final DateTime changeDateTime;
  final DateTime createdAt;

  AccountHistoryItem(
      {required this.id,
      required this.changeType,
      required this.previousState,
      required this.newState,
      required this.changeDateTime,
      required this.createdAt});
}
