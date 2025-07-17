// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiAccountUpdateRequest {
  String get name;
  String get balance;
  String get currency;

  /// Create a copy of ApiAccountUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApiAccountUpdateRequestCopyWith<ApiAccountUpdateRequest> get copyWith =>
      _$ApiAccountUpdateRequestCopyWithImpl<ApiAccountUpdateRequest>(
          this as ApiAccountUpdateRequest, _$identity);

  /// Serializes this ApiAccountUpdateRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiAccountUpdateRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, balance, currency);

  @override
  String toString() {
    return 'ApiAccountUpdateRequest(name: $name, balance: $balance, currency: $currency)';
  }
}

/// @nodoc
abstract mixin class $ApiAccountUpdateRequestCopyWith<$Res> {
  factory $ApiAccountUpdateRequestCopyWith(ApiAccountUpdateRequest value,
          $Res Function(ApiAccountUpdateRequest) _then) =
      _$ApiAccountUpdateRequestCopyWithImpl;
  @useResult
  $Res call({String name, String balance, String currency});
}

/// @nodoc
class _$ApiAccountUpdateRequestCopyWithImpl<$Res>
    implements $ApiAccountUpdateRequestCopyWith<$Res> {
  _$ApiAccountUpdateRequestCopyWithImpl(this._self, this._then);

  final ApiAccountUpdateRequest _self;
  final $Res Function(ApiAccountUpdateRequest) _then;

  /// Create a copy of ApiAccountUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? balance = null,
    Object? currency = null,
  }) {
    return _then(_self.copyWith(
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

/// Adds pattern-matching-related methods to [ApiAccountUpdateRequest].
extension ApiAccountUpdateRequestPatterns on ApiAccountUpdateRequest {
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
    TResult Function(_ApiAccountUpdateRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ApiAccountUpdateRequest() when $default != null:
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
    TResult Function(_ApiAccountUpdateRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiAccountUpdateRequest():
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
    TResult? Function(_ApiAccountUpdateRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiAccountUpdateRequest() when $default != null:
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
    TResult Function(String name, String balance, String currency)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ApiAccountUpdateRequest() when $default != null:
        return $default(_that.name, _that.balance, _that.currency);
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
    TResult Function(String name, String balance, String currency) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiAccountUpdateRequest():
        return $default(_that.name, _that.balance, _that.currency);
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
    TResult? Function(String name, String balance, String currency)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiAccountUpdateRequest() when $default != null:
        return $default(_that.name, _that.balance, _that.currency);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ApiAccountUpdateRequest implements ApiAccountUpdateRequest {
  const _ApiAccountUpdateRequest(
      {required this.name, required this.balance, required this.currency});
  factory _ApiAccountUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$ApiAccountUpdateRequestFromJson(json);

  @override
  final String name;
  @override
  final String balance;
  @override
  final String currency;

  /// Create a copy of ApiAccountUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ApiAccountUpdateRequestCopyWith<_ApiAccountUpdateRequest> get copyWith =>
      __$ApiAccountUpdateRequestCopyWithImpl<_ApiAccountUpdateRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ApiAccountUpdateRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiAccountUpdateRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, balance, currency);

  @override
  String toString() {
    return 'ApiAccountUpdateRequest(name: $name, balance: $balance, currency: $currency)';
  }
}

/// @nodoc
abstract mixin class _$ApiAccountUpdateRequestCopyWith<$Res>
    implements $ApiAccountUpdateRequestCopyWith<$Res> {
  factory _$ApiAccountUpdateRequestCopyWith(_ApiAccountUpdateRequest value,
          $Res Function(_ApiAccountUpdateRequest) _then) =
      __$ApiAccountUpdateRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String balance, String currency});
}

/// @nodoc
class __$ApiAccountUpdateRequestCopyWithImpl<$Res>
    implements _$ApiAccountUpdateRequestCopyWith<$Res> {
  __$ApiAccountUpdateRequestCopyWithImpl(this._self, this._then);

  final _ApiAccountUpdateRequest _self;
  final $Res Function(_ApiAccountUpdateRequest) _then;

  /// Create a copy of ApiAccountUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? balance = null,
    Object? currency = null,
  }) {
    return _then(_ApiAccountUpdateRequest(
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
