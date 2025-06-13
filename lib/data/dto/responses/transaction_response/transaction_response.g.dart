// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiTransactionResponse _$ApiTransactionResponseFromJson(
        Map<String, dynamic> json) =>
    _ApiTransactionResponse(
      id: (json['id'] as num).toInt(),
      account:
          ApiAccountBrief.fromJson(json['account'] as Map<String, dynamic>),
      category: ApiCategory.fromJson(json['category'] as Map<String, dynamic>),
      amount: json['amount'] as String,
      transactionDate: json['transactionDate'] as String,
      comment: json['comment'] as String?,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$ApiTransactionResponseToJson(
        _ApiTransactionResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'account': instance.account,
      'category': instance.category,
      'amount': instance.amount,
      'transactionDate': instance.transactionDate,
      'comment': instance.comment,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
