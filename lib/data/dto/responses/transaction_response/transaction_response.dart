import 'package:freezed_annotation/freezed_annotation.dart';

import '../account_brief/account_brief.dart';
import '../category_dto/category_dto.dart';

part 'transaction_response.freezed.dart';
part 'transaction_response.g.dart';

@freezed
abstract class TransactionResponse with _$TransactionResponse {
  const factory TransactionResponse({
    required int id,
    required AccountBrief accountId,
    required CategoryDto category,
    required String amount,
    required String transactionDate,
    required String? comment,
    required String createdAt,
    required String updatedAt,
  }) = _TransactionResponse;

  factory TransactionResponse.fromJson(Map<String, dynamic> json) => _$TransactionResponseFromJson(json);
}
