import 'package:freezed_annotation/freezed_annotation.dart';

import 'stat_item.dart';

part 'account_response.freezed.dart';
part 'account_response.g.dart';

@freezed
abstract class ApiAccountResponse with _$ApiAccountResponse {
  const factory ApiAccountResponse(
      {required int id,
      required String name,
      required String balance,
      required String currency,
      required List<ApiStatItem> incomeStats,
      required List<ApiStatItem> expenseStats,
      required String createdAt,
      required String updatedAt}) = _ApiAccountResponse;

  factory ApiAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiAccountResponseFromJson(json);
}
