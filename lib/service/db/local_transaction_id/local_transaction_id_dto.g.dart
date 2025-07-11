// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_transaction_id_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LocalTransactionIdDto _$LocalTransactionIdDtoFromJson(
        Map<String, dynamic> json) =>
    _LocalTransactionIdDto(
      userId: (json['userId'] as num).toInt(),
      transactionId: (json['transaction_id'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$LocalTransactionIdDtoToJson(
        _LocalTransactionIdDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'transaction_id': instance.transactionId,
    };
