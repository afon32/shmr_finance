// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

  /// Цвет тинта
  @JsonKey(name: 'tint_color', defaultValue: 0xFF2AE881)
  int get tintColor;

  /// Хаптики
  @JsonKey(name: 'hapricks_on', defaultValue: true)
  bool get hapticksIsOn;

  /// Пин код
  @JsonKey(name: 'user_pin_code', defaultValue: 'none')
  String get securePin;

  /// Биометрия
  @JsonKey(name: 'bio_on', defaultValue: false)
  bool get bioIsOn;

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
                other.isLightTheme == isLightTheme) &&
            (identical(other.tintColor, tintColor) ||
                other.tintColor == tintColor) &&
            (identical(other.hapticksIsOn, hapticksIsOn) ||
                other.hapticksIsOn == hapticksIsOn) &&
            (identical(other.securePin, securePin) ||
                other.securePin == securePin) &&
            (identical(other.bioIsOn, bioIsOn) || other.bioIsOn == bioIsOn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, locale, isLightTheme,
      tintColor, hapticksIsOn, securePin, bioIsOn);

  @override
  String toString() {
    return 'AppCustomizationDto(userId: $userId, locale: $locale, isLightTheme: $isLightTheme, tintColor: $tintColor, hapticksIsOn: $hapticksIsOn, securePin: $securePin, bioIsOn: $bioIsOn)';
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
      @JsonKey(name: 'light_theme', defaultValue: true) bool isLightTheme,
      @JsonKey(name: 'tint_color', defaultValue: 0xFF2AE881) int tintColor,
      @JsonKey(name: 'hapricks_on', defaultValue: true) bool hapticksIsOn,
      @JsonKey(name: 'user_pin_code', defaultValue: 'none') String securePin,
      @JsonKey(name: 'bio_on', defaultValue: false) bool bioIsOn});
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
    Object? tintColor = null,
    Object? hapticksIsOn = null,
    Object? securePin = null,
    Object? bioIsOn = null,
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
      tintColor: null == tintColor
          ? _self.tintColor
          : tintColor // ignore: cast_nullable_to_non_nullable
              as int,
      hapticksIsOn: null == hapticksIsOn
          ? _self.hapticksIsOn
          : hapticksIsOn // ignore: cast_nullable_to_non_nullable
              as bool,
      securePin: null == securePin
          ? _self.securePin
          : securePin // ignore: cast_nullable_to_non_nullable
              as String,
      bioIsOn: null == bioIsOn
          ? _self.bioIsOn
          : bioIsOn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [AppCustomizationDto].
extension AppCustomizationDtoPatterns on AppCustomizationDto {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppCustomizationDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppCustomizationDto() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppCustomizationDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppCustomizationDto():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AppCustomizationDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppCustomizationDto() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int userId,
            @JsonKey(name: 'locale_code', defaultValue: 'ru') String locale,
            @JsonKey(name: 'light_theme', defaultValue: true) bool isLightTheme,
            @JsonKey(name: 'tint_color', defaultValue: 0xFF2AE881)
            int tintColor,
            @JsonKey(name: 'hapricks_on', defaultValue: true) bool hapticksIsOn,
            @JsonKey(name: 'user_pin_code', defaultValue: 'none')
            String securePin,
            @JsonKey(name: 'bio_on', defaultValue: false) bool bioIsOn)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppCustomizationDto() when $default != null:
        return $default(
            _that.userId,
            _that.locale,
            _that.isLightTheme,
            _that.tintColor,
            _that.hapticksIsOn,
            _that.securePin,
            _that.bioIsOn);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int userId,
            @JsonKey(name: 'locale_code', defaultValue: 'ru') String locale,
            @JsonKey(name: 'light_theme', defaultValue: true) bool isLightTheme,
            @JsonKey(name: 'tint_color', defaultValue: 0xFF2AE881)
            int tintColor,
            @JsonKey(name: 'hapricks_on', defaultValue: true) bool hapticksIsOn,
            @JsonKey(name: 'user_pin_code', defaultValue: 'none')
            String securePin,
            @JsonKey(name: 'bio_on', defaultValue: false) bool bioIsOn)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppCustomizationDto():
        return $default(
            _that.userId,
            _that.locale,
            _that.isLightTheme,
            _that.tintColor,
            _that.hapticksIsOn,
            _that.securePin,
            _that.bioIsOn);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int userId,
            @JsonKey(name: 'locale_code', defaultValue: 'ru') String locale,
            @JsonKey(name: 'light_theme', defaultValue: true) bool isLightTheme,
            @JsonKey(name: 'tint_color', defaultValue: 0xFF2AE881)
            int tintColor,
            @JsonKey(name: 'hapricks_on', defaultValue: true) bool hapticksIsOn,
            @JsonKey(name: 'user_pin_code', defaultValue: 'none')
            String securePin,
            @JsonKey(name: 'bio_on', defaultValue: false) bool bioIsOn)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppCustomizationDto() when $default != null:
        return $default(
            _that.userId,
            _that.locale,
            _that.isLightTheme,
            _that.tintColor,
            _that.hapticksIsOn,
            _that.securePin,
            _that.bioIsOn);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AppCustomizationDto implements AppCustomizationDto {
  const _AppCustomizationDto(
      {required this.userId,
      @JsonKey(name: 'locale_code', defaultValue: 'ru') this.locale = 'ru',
      @JsonKey(name: 'light_theme', defaultValue: true)
      this.isLightTheme = true,
      @JsonKey(name: 'tint_color', defaultValue: 0xFF2AE881)
      this.tintColor = 0xFF2AE881,
      @JsonKey(name: 'hapricks_on', defaultValue: true)
      this.hapticksIsOn = true,
      @JsonKey(name: 'user_pin_code', defaultValue: 'none')
      this.securePin = 'none',
      @JsonKey(name: 'bio_on', defaultValue: false) this.bioIsOn = false});
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

  /// Цвет тинта
  @override
  @JsonKey(name: 'tint_color', defaultValue: 0xFF2AE881)
  final int tintColor;

  /// Хаптики
  @override
  @JsonKey(name: 'hapricks_on', defaultValue: true)
  final bool hapticksIsOn;

  /// Пин код
  @override
  @JsonKey(name: 'user_pin_code', defaultValue: 'none')
  final String securePin;

  /// Биометрия
  @override
  @JsonKey(name: 'bio_on', defaultValue: false)
  final bool bioIsOn;

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
                other.isLightTheme == isLightTheme) &&
            (identical(other.tintColor, tintColor) ||
                other.tintColor == tintColor) &&
            (identical(other.hapticksIsOn, hapticksIsOn) ||
                other.hapticksIsOn == hapticksIsOn) &&
            (identical(other.securePin, securePin) ||
                other.securePin == securePin) &&
            (identical(other.bioIsOn, bioIsOn) || other.bioIsOn == bioIsOn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, locale, isLightTheme,
      tintColor, hapticksIsOn, securePin, bioIsOn);

  @override
  String toString() {
    return 'AppCustomizationDto(userId: $userId, locale: $locale, isLightTheme: $isLightTheme, tintColor: $tintColor, hapticksIsOn: $hapticksIsOn, securePin: $securePin, bioIsOn: $bioIsOn)';
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
      @JsonKey(name: 'light_theme', defaultValue: true) bool isLightTheme,
      @JsonKey(name: 'tint_color', defaultValue: 0xFF2AE881) int tintColor,
      @JsonKey(name: 'hapricks_on', defaultValue: true) bool hapticksIsOn,
      @JsonKey(name: 'user_pin_code', defaultValue: 'none') String securePin,
      @JsonKey(name: 'bio_on', defaultValue: false) bool bioIsOn});
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
    Object? tintColor = null,
    Object? hapticksIsOn = null,
    Object? securePin = null,
    Object? bioIsOn = null,
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
      tintColor: null == tintColor
          ? _self.tintColor
          : tintColor // ignore: cast_nullable_to_non_nullable
              as int,
      hapticksIsOn: null == hapticksIsOn
          ? _self.hapticksIsOn
          : hapticksIsOn // ignore: cast_nullable_to_non_nullable
              as bool,
      securePin: null == securePin
          ? _self.securePin
          : securePin // ignore: cast_nullable_to_non_nullable
              as String,
      bioIsOn: null == bioIsOn
          ? _self.bioIsOn
          : bioIsOn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
