// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cold_boot_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ColdBootDto _$ColdBootDtoFromJson(Map<String, dynamic> json) => _ColdBootDto(
      userId: (json['userId'] as num).toInt(),
      isColdBoot: json['cold_boot'] as bool? ?? true,
    );

Map<String, dynamic> _$ColdBootDtoToJson(_ColdBootDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'cold_boot': instance.isColdBoot,
    };
