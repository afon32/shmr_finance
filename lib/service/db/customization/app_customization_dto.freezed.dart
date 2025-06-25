// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_customization_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppCustomizationDto {
  int get userId;

  /// Язык в приложении
  @JsonKey(name: 'locale_code', defaultValue: 'ru')
  String get locale;

  /// Тема приложения
  @JsonKey(name: 'light_theme', defaultValue: true)
  bool get isLightTheme;

  /// Create a copy of AppCustomizationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppCustomizationDtoCopyWith<AppCustomizationDto> get copyWith =>
      _$AppCustomizationDtoCopyWithImpl<AppCustomizationDto>(
          this as AppCustomizationDto, _$identity);

  /// Serializes this AppCustomizationDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppCustomizationDto &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.isLightTheme, isLightTheme) ||
                other.isLightTheme == isLightTheme));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, locale, isLightTheme);

  @override
  String toString() {
    return 'AppCustomizationDto(userId: $userId, locale: $locale, isLightTheme: $isLightTheme)';
  }
}

/// @nodoc
abstract mixin class $AppCustomizationDtoCopyWith<$Res> {
  factory $AppCustomizationDtoCopyWith(
          AppCustomizationDto value, $Res Function(AppCustomizationDto) _then) =
      _$AppCustomizationDtoCopyWithImpl;
  @useResult
  $Res call(
      {int userId,
      @JsonKey(name: 'locale_code', defaultValue: 'ru') String locale,
      @JsonKey(name: 'light_theme', defaultValue: true) bool isLightTheme});
}

/// @nodoc
class _$AppCustomizationDtoCopyWithImpl<$Res>
    implements $AppCustomizationDtoCopyWith<$Res> {
  _$AppCustomizationDtoCopyWithImpl(this._self, this._then);

  final AppCustomizationDto _self;
  final $Res Function(AppCustomizationDto) _then;

  /// Create a copy of AppCustomizationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? locale = null,
    Object? isLightTheme = null,
  }) {
    return _then(_self.copyWith(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      locale: null == locale
          ? _self.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      isLightTheme: null == isLightTheme
          ? _self.isLightTheme
          : isLightTheme // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AppCustomizationDto implements AppCustomizationDto {
  const _AppCustomizationDto(
      {required this.userId,
      @JsonKey(name: 'locale_code', defaultValue: 'ru') this.locale = 'ru',
      @JsonKey(name: 'light_theme', defaultValue: true)
      this.isLightTheme = false});
  factory _AppCustomizationDto.fromJson(Map<String, dynamic> json) =>
      _$AppCustomizationDtoFromJson(json);

  @override
  final int userId;

  /// Язык в приложении
  @override
  @JsonKey(name: 'locale_code', defaultValue: 'ru')
  final String locale;

  /// Тема приложения
  @override
  @JsonKey(name: 'light_theme', defaultValue: true)
  final bool isLightTheme;

  /// Create a copy of AppCustomizationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppCustomizationDtoCopyWith<_AppCustomizationDto> get copyWith =>
      __$AppCustomizationDtoCopyWithImpl<_AppCustomizationDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppCustomizationDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppCustomizationDto &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.isLightTheme, isLightTheme) ||
                other.isLightTheme == isLightTheme));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, locale, isLightTheme);

  @override
  String toString() {
    return 'AppCustomizationDto(userId: $userId, locale: $locale, isLightTheme: $isLightTheme)';
  }
}

/// @nodoc
abstract mixin class _$AppCustomizationDtoCopyWith<$Res>
    implements $AppCustomizationDtoCopyWith<$Res> {
  factory _$AppCustomizationDtoCopyWith(_AppCustomizationDto value,
          $Res Function(_AppCustomizationDto) _then) =
      __$AppCustomizationDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int userId,
      @JsonKey(name: 'locale_code', defaultValue: 'ru') String locale,
      @JsonKey(name: 'light_theme', defaultValue: true) bool isLightTheme});
}

/// @nodoc
class __$AppCustomizationDtoCopyWithImpl<$Res>
    implements _$AppCustomizationDtoCopyWith<$Res> {
  __$AppCustomizationDtoCopyWithImpl(this._self, this._then);

  final _AppCustomizationDto _self;
  final $Res Function(_AppCustomizationDto) _then;

  /// Create a copy of AppCustomizationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userId = null,
    Object? locale = null,
    Object? isLightTheme = null,
  }) {
    return _then(_AppCustomizationDto(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      locale: null == locale
          ? _self.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      isLightTheme: null == isLightTheme
          ? _self.isLightTheme
          : isLightTheme // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
