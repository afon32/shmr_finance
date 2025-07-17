// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'secure_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SecureData {
  bool get bioIsOn;
  String get pin;

  /// Create a copy of SecureData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SecureDataCopyWith<SecureData> get copyWith =>
      _$SecureDataCopyWithImpl<SecureData>(this as SecureData, _$identity);

  /// Serializes this SecureData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SecureData &&
            (identical(other.bioIsOn, bioIsOn) || other.bioIsOn == bioIsOn) &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bioIsOn, pin);

  @override
  String toString() {
    return 'SecureData(bioIsOn: $bioIsOn, pin: $pin)';
  }
}

/// @nodoc
abstract mixin class $SecureDataCopyWith<$Res> {
  factory $SecureDataCopyWith(
          SecureData value, $Res Function(SecureData) _then) =
      _$SecureDataCopyWithImpl;
  @useResult
  $Res call({bool bioIsOn, String pin});
}

/// @nodoc
class _$SecureDataCopyWithImpl<$Res> implements $SecureDataCopyWith<$Res> {
  _$SecureDataCopyWithImpl(this._self, this._then);

  final SecureData _self;
  final $Res Function(SecureData) _then;

  /// Create a copy of SecureData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bioIsOn = null,
    Object? pin = null,
  }) {
    return _then(_self.copyWith(
      bioIsOn: null == bioIsOn
          ? _self.bioIsOn
          : bioIsOn // ignore: cast_nullable_to_non_nullable
              as bool,
      pin: null == pin
          ? _self.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SecureData].
extension SecureDataPatterns on SecureData {
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
    TResult Function(_SecureData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SecureData() when $default != null:
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
    TResult Function(_SecureData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SecureData():
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
    TResult? Function(_SecureData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SecureData() when $default != null:
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
    TResult Function(bool bioIsOn, String pin)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SecureData() when $default != null:
        return $default(_that.bioIsOn, _that.pin);
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
    TResult Function(bool bioIsOn, String pin) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SecureData():
        return $default(_that.bioIsOn, _that.pin);
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
    TResult? Function(bool bioIsOn, String pin)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SecureData() when $default != null:
        return $default(_that.bioIsOn, _that.pin);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SecureData implements SecureData {
  const _SecureData({required this.bioIsOn, required this.pin});
  factory _SecureData.fromJson(Map<String, dynamic> json) =>
      _$SecureDataFromJson(json);

  @override
  final bool bioIsOn;
  @override
  final String pin;

  /// Create a copy of SecureData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SecureDataCopyWith<_SecureData> get copyWith =>
      __$SecureDataCopyWithImpl<_SecureData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SecureDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SecureData &&
            (identical(other.bioIsOn, bioIsOn) || other.bioIsOn == bioIsOn) &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bioIsOn, pin);

  @override
  String toString() {
    return 'SecureData(bioIsOn: $bioIsOn, pin: $pin)';
  }
}

/// @nodoc
abstract mixin class _$SecureDataCopyWith<$Res>
    implements $SecureDataCopyWith<$Res> {
  factory _$SecureDataCopyWith(
          _SecureData value, $Res Function(_SecureData) _then) =
      __$SecureDataCopyWithImpl;
  @override
  @useResult
  $Res call({bool bioIsOn, String pin});
}

/// @nodoc
class __$SecureDataCopyWithImpl<$Res> implements _$SecureDataCopyWith<$Res> {
  __$SecureDataCopyWithImpl(this._self, this._then);

  final _SecureData _self;
  final $Res Function(_SecureData) _then;

  /// Create a copy of SecureData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bioIsOn = null,
    Object? pin = null,
  }) {
    return _then(_SecureData(
      bioIsOn: null == bioIsOn
          ? _self.bioIsOn
          : bioIsOn // ignore: cast_nullable_to_non_nullable
              as bool,
      pin: null == pin
          ? _self.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
