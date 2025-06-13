// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiAccountHistory _$ApiAccountHistoryFromJson(Map<String, dynamic> json) =>
    _ApiAccountHistory(
      id: (json['id'] as num).toInt(),
      accountId: (json['accountId'] as num).toInt(),
      changeType: json['changeType'] as String,
      previousState: ApiAccountState.fromJson(
          json['previousState'] as Map<String, dynamic>),
      newState:
          ApiAccountState.fromJson(json['newState'] as Map<String, dynamic>),
      changeTimestamp: json['changeTimestamp'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$ApiAccountHistoryToJson(_ApiAccountHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'accountId': instance.accountId,
      'changeType': instance.changeType,
      'previousState': instance.previousState,
      'newState': instance.newState,
      'changeTimestamp': instance.changeTimestamp,
      'createdAt': instance.createdAt,
    };
