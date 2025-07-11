import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_transaction_id_dto.freezed.dart';
part 'local_transaction_id_dto.g.dart';

@freezed
abstract class LocalTransactionIdDto with _$LocalTransactionIdDto {
  const factory LocalTransactionIdDto({
    required int userId,
    /// максимальный id локальных записей
    @Default(0)
    @JsonKey(
      name: 'transaction_id',
      defaultValue: 0,
    )
    int transactionId,
  }) = _LocalTransactionIdDto;

  factory LocalTransactionIdDto.fromJson(Map<String, dynamic> json) =>
      _$LocalTransactionIdDtoFromJson(json);
}
