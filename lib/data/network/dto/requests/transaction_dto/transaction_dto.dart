import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_dto.freezed.dart';
part 'transaction_dto.g.dart';

@freezed
abstract class ApiTransaction with _$ApiTransaction {
  const factory ApiTransaction({
    required int id,
    required int accountId,
    required int categoryId,
    required String amount,
    required String transactionDate,
    required String? comment,
    required String createdAt,
    required String updatedAt,
  }) = _ApiTransaction;

  factory ApiTransaction.fromJson(Map<String, dynamic> json) => _$ApiTransactionFromJson(json);
}
