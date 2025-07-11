// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
  int get id;
  int get accountId;
  int get categoryId;
  String get amount;
  String get transactionDate;
  String? get comment;
  String? get createdAt;
  String? get updatedAt;

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
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.transactionDate, transactionDate) ||
                other.transactionDate == transactionDate) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, accountId, categoryId,
      amount, transactionDate, comment, createdAt, updatedAt);

  @override
  String toString() {
    return 'DBTransaction(id: $id, accountId: $accountId, categoryId: $categoryId, amount: $amount, transactionDate: $transactionDate, comment: $comment, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $DBTransactionCopyWith<$Res> {
  factory $DBTransactionCopyWith(
          DBTransaction value, $Res Function(DBTransaction) _then) =
      _$DBTransactionCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      int accountId,
      int categoryId,
      String amount,
      String transactionDate,
      String? comment,
      String? createdAt,
      String? updatedAt});
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
    Object? amount = null,
    Object? transactionDate = null,
    Object? comment = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DBTransaction implements DBTransaction {
  const _DBTransaction(
      {required this.id,
      required this.accountId,
      required this.categoryId,
      required this.amount,
      required this.transactionDate,
      required this.comment,
      required this.createdAt,
      required this.updatedAt});
  factory _DBTransaction.fromJson(Map<String, dynamic> json) =>
      _$DBTransactionFromJson(json);

  @override
  final int id;
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
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

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
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.transactionDate, transactionDate) ||
                other.transactionDate == transactionDate) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, accountId, categoryId,
      amount, transactionDate, comment, createdAt, updatedAt);

  @override
  String toString() {
    return 'DBTransaction(id: $id, accountId: $accountId, categoryId: $categoryId, amount: $amount, transactionDate: $transactionDate, comment: $comment, createdAt: $createdAt, updatedAt: $updatedAt)';
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
      {int id,
      int accountId,
      int categoryId,
      String amount,
      String transactionDate,
      String? comment,
      String? createdAt,
      String? updatedAt});
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
    Object? amount = null,
    Object? transactionDate = null,
    Object? comment = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_DBTransaction(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
