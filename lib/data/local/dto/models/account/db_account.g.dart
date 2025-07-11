// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DBAccount _$DBAccountFromJson(Map<String, dynamic> json) => _DBAccount(
      id: (json['id'] as num).toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      name: json['name'] as String,
      balance: json['balance'] as String,
      currency: json['currency'] as String,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      modification: $enumDecode(_$ModificationEnumMap, json['modification']),
    );

Map<String, dynamic> _$DBAccountToJson(_DBAccount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'name': instance.name,
      'balance': instance.balance,
      'currency': instance.currency,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'modification': _$ModificationEnumMap[instance.modification]!,
    };

const _$ModificationEnumMap = {
  Modification.created: 'created',
  Modification.updated: 'updated',
  Modification.deleted: 'deleted',
  Modification.restored: 'restored',
};
