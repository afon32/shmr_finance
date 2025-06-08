// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionResponse _$TransactionResponseFromJson(Map<String, dynamic> json) =>
    _TransactionResponse(
      id: (json['id'] as num).toInt(),
      accountId:
          AccountBrief.fromJson(json['accountId'] as Map<String, dynamic>),
      category: CategoryDto.fromJson(json['category'] as Map<String, dynamic>),
      amount: json['amount'] as String,
      transactionDate: json['transactionDate'] as String,
      comment: json['comment'] as String?,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$TransactionResponseToJson(
        _TransactionResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'accountId': instance.accountId,
      'category': instance.category,
      'amount': instance.amount,
      'transactionDate': instance.transactionDate,
      'comment': instance.comment,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
