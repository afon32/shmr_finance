// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DBTransaction _$DBTransactionFromJson(Map<String, dynamic> json) =>
    _DBTransaction(
      id: json['id'] as String,
      accountId: (json['accountId'] as num).toInt(),
      categoryId: (json['categoryId'] as num).toInt(),
      isIncome: json['isIncome'] as bool?,
      amount: json['amount'] as String,
      transactionDate: json['transactionDate'] as String,
      comment: json['comment'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      modification: $enumDecode(_$ModificationEnumMap, json['modification']),
    );

Map<String, dynamic> _$DBTransactionToJson(_DBTransaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'accountId': instance.accountId,
      'categoryId': instance.categoryId,
      'isIncome': instance.isIncome,
      'amount': instance.amount,
      'transactionDate': instance.transactionDate,
      'comment': instance.comment,
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
