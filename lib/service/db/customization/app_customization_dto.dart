import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_customization_dto.freezed.dart';
part 'app_customization_dto.g.dart';

@freezed
abstract class AppCustomizationDto with _$AppCustomizationDto {
  const factory AppCustomizationDto({
    required int userId,

    /// Язык в приложении
    @Default('ru')
    @JsonKey(
      name: 'locale_code',
      defaultValue: 'ru',
    )
    String locale,

    /// Тема приложения
    @Default(false)
    @JsonKey(
      name: 'light_theme',
      defaultValue: true,
    )
    bool isLightTheme,
  }) = _AppCustomizationDto;

  factory AppCustomizationDto.fromJson(Map<String, dynamic> json) => _$AppCustomizationDtoFromJson(json);
}