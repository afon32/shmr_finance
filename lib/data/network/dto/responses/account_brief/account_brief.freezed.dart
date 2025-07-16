// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_brief.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiAccountBrief {
  int get id;
  String get name;
  String get balance;
  String get currency;

  /// Create a copy of ApiAccountBrief
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApiAccountBriefCopyWith<ApiAccountBrief> get copyWith =>
      _$ApiAccountBriefCopyWithImpl<ApiAccountBrief>(
          this as ApiAccountBrief, _$identity);

  /// Serializes this ApiAccountBrief to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiAccountBrief &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, balance, currency);

  @override
  String toString() {
    return 'ApiAccountBrief(id: $id, name: $name, balance: $balance, currency: $currency)';
  }
}

/// @nodoc
abstract mixin class $ApiAccountBriefCopyWith<$Res> {
  factory $ApiAccountBriefCopyWith(
          ApiAccountBrief value, $Res Function(ApiAccountBrief) _then) =
      _$ApiAccountBriefCopyWithImpl;
  @useResult
  $Res call({int id, String name, String balance, String currency});
}

/// @nodoc
class _$ApiAccountBriefCopyWithImpl<$Res>
    implements $ApiAccountBriefCopyWith<$Res> {
  _$ApiAccountBriefCopyWithImpl(this._self, this._then);

  final ApiAccountBrief _self;
  final $Res Function(ApiAccountBrief) _then;

  /// Create a copy of ApiAccountBrief
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? balance = null,
    Object? currency = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _self.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ApiAccountBrief].
extension ApiAccountBriefPatterns on ApiAccountBrief {
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
    TResult Function(_ApiAccountBrief value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ApiAccountBrief() when $default != null:
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
    TResult Function(_ApiAccountBrief value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiAccountBrief():
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
    TResult? Function(_ApiAccountBrief value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiAccountBrief() when $default != null:
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
    TResult Function(int id, String name, String balance, String currency)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ApiAccountBrief() when $default != null:
        return $default(_that.id, _that.name, _that.balance, _that.currency);
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
    TResult Function(int id, String name, String balance, String currency)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiAccountBrief():
        return $default(_that.id, _that.name, _that.balance, _that.currency);
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
    TResult? Function(int id, String name, String balance, String currency)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiAccountBrief() when $default != null:
        return $default(_that.id, _that.name, _that.balance, _that.currency);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ApiAccountBrief implements ApiAccountBrief {
  const _ApiAccountBrief(
      {required this.id,
      required this.name,
      required this.balance,
      required this.currency});
  factory _ApiAccountBrief.fromJson(Map<String, dynamic> json) =>
      _$ApiAccountBriefFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String balance;
  @override
  final String currency;

  /// Create a copy of ApiAccountBrief
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ApiAccountBriefCopyWith<_ApiAccountBrief> get copyWith =>
      __$ApiAccountBriefCopyWithImpl<_ApiAccountBrief>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ApiAccountBriefToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiAccountBrief &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, balance, currency);

  @override
  String toString() {
    return 'ApiAccountBrief(id: $id, name: $name, balance: $balance, currency: $currency)';
  }
}

/// @nodoc
abstract mixin class _$ApiAccountBriefCopyWith<$Res>
    implements $ApiAccountBriefCopyWith<$Res> {
  factory _$ApiAccountBriefCopyWith(
          _ApiAccountBrief value, $Res Function(_ApiAccountBrief) _then) =
      __$ApiAccountBriefCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String name, String balance, String currency});
}

/// @nodoc
class __$ApiAccountBriefCopyWithImpl<$Res>
    implements _$ApiAccountBriefCopyWith<$Res> {
  __$ApiAccountBriefCopyWithImpl(this._self, this._then);

  final _ApiAccountBrief _self;
  final $Res Function(_ApiAccountBrief) _then;

  /// Create a copy of ApiAccountBrief
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? balance = null,
    Object? currency = null,
  }) {
    return _then(_ApiAccountBrief(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _self.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
