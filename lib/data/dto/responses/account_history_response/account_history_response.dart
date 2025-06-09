import 'package:freezed_annotation/freezed_annotation.dart';

import 'account_history.dart';

part 'account_history_response.freezed.dart';
part 'account_history_response.g.dart';

@freezed
abstract class ApiAccountHistoryResponse with _$ApiAccountHistoryResponse {
  const factory ApiAccountHistoryResponse(
      {required int accountId,
      required String accountName,
      required String currency,
      required String currentBalance,
      required List<ApiAccountHistory> history}) = _ApiAccountHistoryResponse;

  factory ApiAccountHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiAccountHistoryResponseFromJson(json);
}
