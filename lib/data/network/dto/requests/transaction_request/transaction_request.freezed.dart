// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiTransactionRequest {
  int get accountId;
  int get categoryId;
  String get amount;
  String get transactionDate;
  String? get comment;

  /// Create a copy of ApiTransactionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApiTransactionRequestCopyWith<ApiTransactionRequest> get copyWith =>
      _$ApiTransactionRequestCopyWithImpl<ApiTransactionRequest>(
          this as ApiTransactionRequest, _$identity);

  /// Serializes this ApiTransactionRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiTransactionRequest &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.transactionDate, transactionDate) ||
                other.transactionDate == transactionDate) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, accountId, categoryId, amount, transactionDate, comment);

  @override
  String toString() {
    return 'ApiTransactionRequest(accountId: $accountId, categoryId: $categoryId, amount: $amount, transactionDate: $transactionDate, comment: $comment)';
  }
}

/// @nodoc
abstract mixin class $ApiTransactionRequestCopyWith<$Res> {
  factory $ApiTransactionRequestCopyWith(ApiTransactionRequest value,
          $Res Function(ApiTransactionRequest) _then) =
      _$ApiTransactionRequestCopyWithImpl;
  @useResult
  $Res call(
      {int accountId,
      int categoryId,
      String amount,
      String transactionDate,
      String? comment});
}

/// @nodoc
class _$ApiTransactionRequestCopyWithImpl<$Res>
    implements $ApiTransactionRequestCopyWith<$Res> {
  _$ApiTransactionRequestCopyWithImpl(this._self, this._then);

  final ApiTransactionRequest _self;
  final $Res Function(ApiTransactionRequest) _then;

  /// Create a copy of ApiTransactionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? categoryId = null,
    Object? amount = null,
    Object? transactionDate = null,
    Object? comment = freezed,
  }) {
    return _then(_self.copyWith(
      accountId: null == accountId
          ? _self.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      transactionDate: null == transactionDate
          ? _self.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as String,
      comment: freezed == comment
          ? _self.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ApiTransactionRequest].
extension ApiTransactionRequestPatterns on ApiTransactionRequest {
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
    TResult Function(_ApiTransactionRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ApiTransactionRequest() when $default != null:
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
    TResult Function(_ApiTransactionRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiTransactionRequest():
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
    TResult? Function(_ApiTransactionRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiTransactionRequest() when $default != null:
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
    TResult Function(int accountId, int categoryId, String amount,
            String transactionDate, String? comment)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ApiTransactionRequest() when $default != null:
        return $default(_that.accountId, _that.categoryId, _that.amount,
            _that.transactionDate, _that.comment);
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
    TResult Function(int accountId, int categoryId, String amount,
            String transactionDate, String? comment)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiTransactionRequest():
        return $default(_that.accountId, _that.categoryId, _that.amount,
            _that.transactionDate, _that.comment);
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
    TResult? Function(int accountId, int categoryId, String amount,
            String transactionDate, String? comment)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiTransactionRequest() when $default != null:
        return $default(_that.accountId, _that.categoryId, _that.amount,
            _that.transactionDate, _that.comment);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ApiTransactionRequest implements ApiTransactionRequest {
  const _ApiTransactionRequest(
      {required this.accountId,
      required this.categoryId,
      required this.amount,
      required this.transactionDate,
      required this.comment});
  factory _ApiTransactionRequest.fromJson(Map<String, dynamic> json) =>
      _$ApiTransactionRequestFromJson(json);

  @override
  final int accountId;
  @override
  final int categoryId;
  @override
  final String amount;
  @override
  final String transactionDate;
  @override
  final String? comment;

  /// Create a copy of ApiTransactionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ApiTransactionRequestCopyWith<_ApiTransactionRequest> get copyWith =>
      __$ApiTransactionRequestCopyWithImpl<_ApiTransactionRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ApiTransactionRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiTransactionRequest &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.transactionDate, transactionDate) ||
                other.transactionDate == transactionDate) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, accountId, categoryId, amount, transactionDate, comment);

  @override
  String toString() {
    return 'ApiTransactionRequest(accountId: $accountId, categoryId: $categoryId, amount: $amount, transactionDate: $transactionDate, comment: $comment)';
  }
}

/// @nodoc
abstract mixin class _$ApiTransactionRequestCopyWith<$Res>
    implements $ApiTransactionRequestCopyWith<$Res> {
  factory _$ApiTransactionRequestCopyWith(_ApiTransactionRequest value,
          $Res Function(_ApiTransactionRequest) _then) =
      __$ApiTransactionRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int accountId,
      int categoryId,
      String amount,
      String transactionDate,
      String? comment});
}

/// @nodoc
class __$ApiTransactionRequestCopyWithImpl<$Res>
    implements _$ApiTransactionRequestCopyWith<$Res> {
  __$ApiTransactionRequestCopyWithImpl(this._self, this._then);

  final _ApiTransactionRequest _self;
  final $Res Function(_ApiTransactionRequest) _then;

  /// Create a copy of ApiTransactionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? accountId = null,
    Object? categoryId = null,
    Object? amount = null,
    Object? transactionDate = null,
    Object? comment = freezed,
  }) {
    return _then(_ApiTransactionRequest(
      accountId: null == accountId
          ? _self.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      transactionDate: null == transactionDate
          ? _self.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as String,
      comment: freezed == comment
          ? _self.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
