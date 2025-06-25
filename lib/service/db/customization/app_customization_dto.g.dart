// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_customization_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppCustomizationDto _$AppCustomizationDtoFromJson(Map<String, dynamic> json) =>
    _AppCustomizationDto(
      userId: (json['userId'] as num).toInt(),
      locale: json['locale_code'] as String? ?? 'ru',
      isLightTheme: json['light_theme'] as bool? ?? true,
    );

Map<String, dynamic> _$AppCustomizationDtoToJson(
        _AppCustomizationDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'locale_code': instance.locale,
      'light_theme': instance.isLightTheme,
    };
