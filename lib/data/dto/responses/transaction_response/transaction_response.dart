import 'package:freezed_annotation/freezed_annotation.dart';

import '../account_brief/account_brief.dart';
import '../category_dto/category_dto.dart';

part 'transaction_response.freezed.dart';
part 'transaction_response.g.dart';

@freezed
abstract class ApiTransactionResponse with _$ApiTransactionResponse {
  const factory ApiTransactionResponse({
    required int id,
    required ApiAccountBrief account,
    required ApiCategory category,
    required String amount,
    required String transactionDate,
    required String? comment,
    required String createdAt,
    required String updatedAt,
  }) = _ApiTransactionResponse;

  factory ApiTransactionResponse.fromJson(Map<String, dynamic> json) => _$ApiTransactionResponseFromJson(json);
}
