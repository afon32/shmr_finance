import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_dto.freezed.dart';
part 'transaction_dto.g.dart';

@freezed
abstract class TransactionDto with _$TransactionDto {
  const factory TransactionDto({
    required int id,
    required int accountId,
    required int categoryId,
    required String amount,
    required String transactionDate,
    required String? comment,
    required String createdAt,
    required String updatedAt,
  }) = _TransactionDto;

  factory TransactionDto.fromJson(Map<String, dynamic> json) => _$TransactionDtoFromJson(json);
}
