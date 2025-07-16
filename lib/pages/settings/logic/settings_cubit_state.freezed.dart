// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_cubit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SettingsCubitState {
  bool get isSystemTheme;
  Color get mainColor;
  bool get hapticksOn;
  bool get isEnglish;

  /// Create a copy of SettingsCubitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SettingsCubitStateCopyWith<SettingsCubitState> get copyWith =>
      _$SettingsCubitStateCopyWithImpl<SettingsCubitState>(
          this as SettingsCubitState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SettingsCubitState &&
            (identical(other.isSystemTheme, isSystemTheme) ||
                other.isSystemTheme == isSystemTheme) &&
            (identical(other.mainColor, mainColor) ||
                other.mainColor == mainColor) &&
            (identical(other.hapticksOn, hapticksOn) ||
                other.hapticksOn == hapticksOn) &&
            (identical(other.isEnglish, isEnglish) ||
                other.isEnglish == isEnglish));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isSystemTheme, mainColor, hapticksOn, isEnglish);

  @override
  String toString() {
    return 'SettingsCubitState(isSystemTheme: $isSystemTheme, mainColor: $mainColor, hapticksOn: $hapticksOn, isEnglish: $isEnglish)';
  }
}

/// @nodoc
abstract mixin class $SettingsCubitStateCopyWith<$Res> {
  factory $SettingsCubitStateCopyWith(
          SettingsCubitState value, $Res Function(SettingsCubitState) _then) =
      _$SettingsCubitStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isSystemTheme, Color mainColor, bool hapticksOn, bool isEnglish});
}

/// @nodoc
class _$SettingsCubitStateCopyWithImpl<$Res>
    implements $SettingsCubitStateCopyWith<$Res> {
  _$SettingsCubitStateCopyWithImpl(this._self, this._then);

  final SettingsCubitState _self;
  final $Res Function(SettingsCubitState) _then;

  /// Create a copy of SettingsCubitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSystemTheme = null,
    Object? mainColor = null,
    Object? hapticksOn = null,
    Object? isEnglish = null,
  }) {
    return _then(SettingsCubitState(
      isSystemTheme: null == isSystemTheme
          ? _self.isSystemTheme
          : isSystemTheme // ignore: cast_nullable_to_non_nullable
              as bool,
      mainColor: null == mainColor
          ? _self.mainColor
          : mainColor // ignore: cast_nullable_to_non_nullable
              as Color,
      hapticksOn: null == hapticksOn
          ? _self.hapticksOn
          : hapticksOn // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnglish: null == isEnglish
          ? _self.isEnglish
          : isEnglish // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [SettingsCubitState].
extension SettingsCubitStatePatterns on SettingsCubitState {
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
  TResult maybeMap<TResult extends Object?>({
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
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
  TResult map<TResult extends Object?>() {
    final _that = this;
    switch (_that) {
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
  TResult? mapOrNull<TResult extends Object?>() {
    final _that = this;
    switch (_that) {
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
  TResult maybeWhen<TResult extends Object?>({
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
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
  TResult when<TResult extends Object?>() {
    final _that = this;
    switch (_that) {
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
  TResult? whenOrNull<TResult extends Object?>() {
    final _that = this;
    switch (_that) {
      case _:
        return null;
    }
  }
}

// dart format on
