// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiAccountResponse _$ApiAccountResponseFromJson(Map<String, dynamic> json) =>
    _ApiAccountResponse(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      balance: json['balance'] as String,
      currency: json['currency'] as String,
      incomeStats: (json['incomeStats'] as List<dynamic>)
          .map((e) => ApiStatItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      expenseStats: (json['expenseStats'] as List<dynamic>)
          .map((e) => ApiStatItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$ApiAccountResponseToJson(_ApiAccountResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'balance': instance.balance,
      'currency': instance.currency,
      'incomeStats': instance.incomeStats,
      'expenseStats': instance.expenseStats,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
