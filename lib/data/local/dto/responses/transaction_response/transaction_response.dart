import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shmr_finance/data/local/dto/responses/account_dto/account_dto.dart';

import '../account_brief/account_brief.dart';
import '../category_dto/category_dto.dart';

part 'transaction_response.freezed.dart';
part 'transaction_response.g.dart';

@freezed
abstract class DBTransactionResponse with _$DBTransactionResponse {
  const factory DBTransactionResponse({
    required int id,
    required DBAccount account,
    required DBCategory category,
    required String amount,
    required String transactionDate,
    required String? comment,
    required String createdAt,
    required String updatedAt,
  }) = _DBTransactionResponse;

  factory DBTransactionResponse.fromJson(Map<String, dynamic> json) => _$DBTransactionResponseFromJson(json);
}
