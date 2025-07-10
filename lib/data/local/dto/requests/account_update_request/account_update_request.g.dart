// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiAccountUpdateRequest _$ApiAccountUpdateRequestFromJson(
        Map<String, dynamic> json) =>
    _ApiAccountUpdateRequest(
      name: json['name'] as String,
      balance: json['balance'] as String,
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$ApiAccountUpdateRequestToJson(
        _ApiAccountUpdateRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'balance': instance.balance,
      'currency': instance.currency,
    };
