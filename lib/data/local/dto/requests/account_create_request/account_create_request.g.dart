// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiAccountCreateRequest _$ApiAccountCreateRequestFromJson(
        Map<String, dynamic> json) =>
    _ApiAccountCreateRequest(
      name: json['name'] as String,
      balance: json['balance'] as String,
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$ApiAccountCreateRequestToJson(
        _ApiAccountCreateRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'balance': instance.balance,
      'currency': instance.currency,
    };
