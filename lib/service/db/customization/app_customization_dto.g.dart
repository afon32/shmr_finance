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
      tintColor: (json['tint_color'] as num?)?.toInt() ?? 4281002113,
      hapticksIsOn: json['hapricks_on'] as bool? ?? true,
      securePin: json['user_pin_code'] as String? ?? 'none',
      bioIsOn: json['bio_on'] as bool? ?? false,
    );

Map<String, dynamic> _$AppCustomizationDtoToJson(
        _AppCustomizationDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'locale_code': instance.locale,
      'light_theme': instance.isLightTheme,
      'tint_color': instance.tintColor,
      'hapricks_on': instance.hapticksIsOn,
      'user_pin_code': instance.securePin,
      'bio_on': instance.bioIsOn,
    };
