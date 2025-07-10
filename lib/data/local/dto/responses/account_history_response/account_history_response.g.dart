// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiAccountHistoryResponse _$ApiAccountHistoryResponseFromJson(
        Map<String, dynamic> json) =>
    _ApiAccountHistoryResponse(
      accountId: (json['accountId'] as num).toInt(),
      accountName: json['accountName'] as String,
      currency: json['currency'] as String,
      currentBalance: json['currentBalance'] as String,
      history: (json['history'] as List<dynamic>)
          .map((e) => ApiAccountHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ApiAccountHistoryResponseToJson(
        _ApiAccountHistoryResponse instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'accountName': instance.accountName,
      'currency': instance.currency,
      'currentBalance': instance.currentBalance,
      'history': instance.history,
    };
