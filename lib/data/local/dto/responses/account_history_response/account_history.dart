import 'package:freezed_annotation/freezed_annotation.dart';

import 'account_state.dart';

part 'account_history.freezed.dart';
part 'account_history.g.dart';

@freezed
abstract class ApiAccountHistory with _$ApiAccountHistory {
  const factory ApiAccountHistory(
      {required int id,
      required int accountId,
      required String changeType,
      required ApiAccountState previousState,
      required ApiAccountState newState,
      required String changeTimestamp,
      required String createdAt}) = _ApiAccountHistory;

  factory ApiAccountHistory.fromJson(Map<String, dynamic> json) =>
      _$ApiAccountHistoryFromJson(json);
}
