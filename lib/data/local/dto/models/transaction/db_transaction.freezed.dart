// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'db_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DBTransaction {
  String get id;
  int get accountId;
  int get categoryId;
  bool? get isIncome;
  String get amount;
  String get transactionDate;
  String? get comment;
  String? get createdAt;
  String? get updatedAt;
  Modification get modification;

  /// Create a copy of DBTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DBTransactionCopyWith<DBTransaction> get copyWith =>
      _$DBTransactionCopyWithImpl<DBTransaction>(
          this as DBTransaction, _$identity);

  /// Serializes this DBTransaction to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DBTransaction &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.isIncome, isIncome) ||
                other.isIncome == isIncome) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.transactionDate, transactionDate) ||
                other.transactionDate == transactionDate) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.modification, modification) ||
                other.modification == modification));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      accountId,
      categoryId,
      isIncome,
      amount,
      transactionDate,
      comment,
      createdAt,
      updatedAt,
      modification);

  @override
  String toString() {
    return 'DBTransaction(id: $id, accountId: $accountId, categoryId: $categoryId, isIncome: $isIncome, amount: $amount, transactionDate: $transactionDate, comment: $comment, createdAt: $createdAt, updatedAt: $updatedAt, modification: $modification)';
  }
}

/// @nodoc
abstract mixin class $DBTransactionCopyWith<$Res> {
  factory $DBTransactionCopyWith(
          DBTransaction value, $Res Function(DBTransaction) _then) =
      _$DBTransactionCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      int accountId,
      int categoryId,
      bool? isIncome,
      String amount,
      String transactionDate,
      String? comment,
      String? createdAt,
      String? updatedAt,
      Modification modification});
}

/// @nodoc
class _$DBTransactionCopyWithImpl<$Res>
    implements $DBTransactionCopyWith<$Res> {
  _$DBTransactionCopyWithImpl(this._self, this._then);

  final DBTransaction _self;
  final $Res Function(DBTransaction) _then;

  /// Create a copy of DBTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountId = null,
    Object? categoryId = null,
    Object? isIncome = freezed,
    Object? amount = null,
    Object? transactionDate = null,
    Object? comment = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? modification = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _self.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      isIncome: freezed == isIncome
          ? _self.isIncome
          : isIncome // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      modification: null == modification
          ? _self.modification
          : modification // ignore: cast_nullable_to_non_nullable
              as Modification,
    ));
  }
}

/// Adds pattern-matching-related methods to [DBTransaction].
extension DBTransactionPatterns on DBTransaction {
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
    TResult Function(_DBTransaction value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DBTransaction() when $default != null:
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
    TResult Function(_DBTransaction value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DBTransaction():
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
    TResult? Function(_DBTransaction value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DBTransaction() when $default != null:
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
            String id,
            int accountId,
            int categoryId,
            bool? isIncome,
            String amount,
            String transactionDate,
            String? comment,
            String? createdAt,
            String? updatedAt,
            Modification modification)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DBTransaction() when $default != null:
        return $default(
            _that.id,
            _that.accountId,
            _that.categoryId,
            _that.isIncome,
            _that.amount,
            _that.transactionDate,
            _that.comment,
            _that.createdAt,
            _that.updatedAt,
            _that.modification);
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
            String id,
            int accountId,
            int categoryId,
            bool? isIncome,
            String amount,
            String transactionDate,
            String? comment,
            String? createdAt,
            String? updatedAt,
            Modification modification)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DBTransaction():
        return $default(
            _that.id,
            _that.accountId,
            _that.categoryId,
            _that.isIncome,
            _that.amount,
            _that.transactionDate,
            _that.comment,
            _that.createdAt,
            _that.updatedAt,
            _that.modification);
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
            String id,
            int accountId,
            int categoryId,
            bool? isIncome,
            String amount,
            String transactionDate,
            String? comment,
            String? createdAt,
            String? updatedAt,
            Modification modification)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DBTransaction() when $default != null:
        return $default(
            _that.id,
            _that.accountId,
            _that.categoryId,
            _that.isIncome,
            _that.amount,
            _that.transactionDate,
            _that.comment,
            _that.createdAt,
            _that.updatedAt,
            _that.modification);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DBTransaction implements DBTransaction {
  const _DBTransaction(
      {required this.id,
      required this.accountId,
      required this.categoryId,
      this.isIncome,
      required this.amount,
      required this.transactionDate,
      required this.comment,
      required this.createdAt,
      required this.updatedAt,
      required this.modification});
  factory _DBTransaction.fromJson(Map<String, dynamic> json) =>
      _$DBTransactionFromJson(json);

  @override
  final String id;
  @override
  final int accountId;
  @override
  final int categoryId;
  @override
  final bool? isIncome;
  @override
  final String amount;
  @override
  final String transactionDate;
  @override
  final String? comment;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final Modification modification;

  /// Create a copy of DBTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DBTransactionCopyWith<_DBTransaction> get copyWith =>
      __$DBTransactionCopyWithImpl<_DBTransaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DBTransactionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DBTransaction &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.isIncome, isIncome) ||
                other.isIncome == isIncome) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.transactionDate, transactionDate) ||
                other.transactionDate == transactionDate) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.modification, modification) ||
                other.modification == modification));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      accountId,
      categoryId,
      isIncome,
      amount,
      transactionDate,
      comment,
      createdAt,
      updatedAt,
      modification);

  @override
  String toString() {
    return 'DBTransaction(id: $id, accountId: $accountId, categoryId: $categoryId, isIncome: $isIncome, amount: $amount, transactionDate: $transactionDate, comment: $comment, createdAt: $createdAt, updatedAt: $updatedAt, modification: $modification)';
  }
}

/// @nodoc
abstract mixin class _$DBTransactionCopyWith<$Res>
    implements $DBTransactionCopyWith<$Res> {
  factory _$DBTransactionCopyWith(
          _DBTransaction value, $Res Function(_DBTransaction) _then) =
      __$DBTransactionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      int accountId,
      int categoryId,
      bool? isIncome,
      String amount,
      String transactionDate,
      String? comment,
      String? createdAt,
      String? updatedAt,
      Modification modification});
}

/// @nodoc
class __$DBTransactionCopyWithImpl<$Res>
    implements _$DBTransactionCopyWith<$Res> {
  __$DBTransactionCopyWithImpl(this._self, this._then);

  final _DBTransaction _self;
  final $Res Function(_DBTransaction) _then;

  /// Create a copy of DBTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? accountId = null,
    Object? categoryId = null,
    Object? isIncome = freezed,
    Object? amount = null,
    Object? transactionDate = null,
    Object? comment = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? modification = null,
  }) {
    return _then(_DBTransaction(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _self.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      isIncome: freezed == isIncome
          ? _self.isIncome
          : isIncome // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      modification: null == modification
          ? _self.modification
          : modification // ignore: cast_nullable_to_non_nullable
              as Modification,
    ));
  }
}

// dart format on
