// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_transaction_id_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LocalTransactionIdDto {
  int get userId;

  /// максимальный id локальных записей
  @JsonKey(name: 'transaction_id', defaultValue: 0)
  int get transactionId;

  /// Create a copy of LocalTransactionIdDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LocalTransactionIdDtoCopyWith<LocalTransactionIdDto> get copyWith =>
      _$LocalTransactionIdDtoCopyWithImpl<LocalTransactionIdDto>(
          this as LocalTransactionIdDto, _$identity);

  /// Serializes this LocalTransactionIdDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocalTransactionIdDto &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, transactionId);

  @override
  String toString() {
    return 'LocalTransactionIdDto(userId: $userId, transactionId: $transactionId)';
  }
}

/// @nodoc
abstract mixin class $LocalTransactionIdDtoCopyWith<$Res> {
  factory $LocalTransactionIdDtoCopyWith(LocalTransactionIdDto value,
          $Res Function(LocalTransactionIdDto) _then) =
      _$LocalTransactionIdDtoCopyWithImpl;
  @useResult
  $Res call(
      {int userId,
      @JsonKey(name: 'transaction_id', defaultValue: 0) int transactionId});
}

/// @nodoc
class _$LocalTransactionIdDtoCopyWithImpl<$Res>
    implements $LocalTransactionIdDtoCopyWith<$Res> {
  _$LocalTransactionIdDtoCopyWithImpl(this._self, this._then);

  final LocalTransactionIdDto _self;
  final $Res Function(LocalTransactionIdDto) _then;

  /// Create a copy of LocalTransactionIdDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? transactionId = null,
  }) {
    return _then(_self.copyWith(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      transactionId: null == transactionId
          ? _self.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [LocalTransactionIdDto].
extension LocalTransactionIdDtoPatterns on LocalTransactionIdDto {
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
    TResult Function(_LocalTransactionIdDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LocalTransactionIdDto() when $default != null:
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
    TResult Function(_LocalTransactionIdDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocalTransactionIdDto():
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
    TResult? Function(_LocalTransactionIdDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocalTransactionIdDto() when $default != null:
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
            @JsonKey(name: 'transaction_id', defaultValue: 0)
            int transactionId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LocalTransactionIdDto() when $default != null:
        return $default(_that.userId, _that.transactionId);
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
    TResult Function(int userId,
            @JsonKey(name: 'transaction_id', defaultValue: 0) int transactionId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocalTransactionIdDto():
        return $default(_that.userId, _that.transactionId);
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
            @JsonKey(name: 'transaction_id', defaultValue: 0)
            int transactionId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocalTransactionIdDto() when $default != null:
        return $default(_that.userId, _that.transactionId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LocalTransactionIdDto implements LocalTransactionIdDto {
  const _LocalTransactionIdDto(
      {required this.userId,
      @JsonKey(name: 'transaction_id', defaultValue: 0)
      this.transactionId = 0});
  factory _LocalTransactionIdDto.fromJson(Map<String, dynamic> json) =>
      _$LocalTransactionIdDtoFromJson(json);

  @override
  final int userId;

  /// максимальный id локальных записей
  @override
  @JsonKey(name: 'transaction_id', defaultValue: 0)
  final int transactionId;

  /// Create a copy of LocalTransactionIdDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LocalTransactionIdDtoCopyWith<_LocalTransactionIdDto> get copyWith =>
      __$LocalTransactionIdDtoCopyWithImpl<_LocalTransactionIdDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LocalTransactionIdDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocalTransactionIdDto &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, transactionId);

  @override
  String toString() {
    return 'LocalTransactionIdDto(userId: $userId, transactionId: $transactionId)';
  }
}

/// @nodoc
abstract mixin class _$LocalTransactionIdDtoCopyWith<$Res>
    implements $LocalTransactionIdDtoCopyWith<$Res> {
  factory _$LocalTransactionIdDtoCopyWith(_LocalTransactionIdDto value,
          $Res Function(_LocalTransactionIdDto) _then) =
      __$LocalTransactionIdDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int userId,
      @JsonKey(name: 'transaction_id', defaultValue: 0) int transactionId});
}

/// @nodoc
class __$LocalTransactionIdDtoCopyWithImpl<$Res>
    implements _$LocalTransactionIdDtoCopyWith<$Res> {
  __$LocalTransactionIdDtoCopyWithImpl(this._self, this._then);

  final _LocalTransactionIdDto _self;
  final $Res Function(_LocalTransactionIdDto) _then;

  /// Create a copy of LocalTransactionIdDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userId = null,
    Object? transactionId = null,
  }) {
    return _then(_LocalTransactionIdDto(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      transactionId: null == transactionId
          ? _self.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
