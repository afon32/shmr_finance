// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DBTransactionResponse {
  int get id;
  DBAccount get account;
  DBCategory get category;
  String get amount;
  String get transactionDate;
  String? get comment;
  String get createdAt;
  String get updatedAt;

  /// Create a copy of DBTransactionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DBTransactionResponseCopyWith<DBTransactionResponse> get copyWith =>
      _$DBTransactionResponseCopyWithImpl<DBTransactionResponse>(
          this as DBTransactionResponse, _$identity);

  /// Serializes this DBTransactionResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DBTransactionResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.category, category) ||
                other.category == category) &&
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
  int get hashCode => Object.hash(runtimeType, id, account, category, amount,
      transactionDate, comment, createdAt, updatedAt);

  @override
  String toString() {
    return 'DBTransactionResponse(id: $id, account: $account, category: $category, amount: $amount, transactionDate: $transactionDate, comment: $comment, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $DBTransactionResponseCopyWith<$Res> {
  factory $DBTransactionResponseCopyWith(DBTransactionResponse value,
          $Res Function(DBTransactionResponse) _then) =
      _$DBTransactionResponseCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      DBAccount account,
      DBCategory category,
      String amount,
      String transactionDate,
      String? comment,
      String createdAt,
      String updatedAt});

  $DBAccountCopyWith<$Res> get account;
  $DBCategoryCopyWith<$Res> get category;
}

/// @nodoc
class _$DBTransactionResponseCopyWithImpl<$Res>
    implements $DBTransactionResponseCopyWith<$Res> {
  _$DBTransactionResponseCopyWithImpl(this._self, this._then);

  final DBTransactionResponse _self;
  final $Res Function(DBTransactionResponse) _then;

  /// Create a copy of DBTransactionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? account = null,
    Object? category = null,
    Object? amount = null,
    Object? transactionDate = null,
    Object? comment = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      account: null == account
          ? _self.account
          : account // ignore: cast_nullable_to_non_nullable
              as DBAccount,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as DBCategory,
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
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of DBTransactionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DBAccountCopyWith<$Res> get account {
    return $DBAccountCopyWith<$Res>(_self.account, (value) {
      return _then(_self.copyWith(account: value));
    });
  }

  /// Create a copy of DBTransactionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DBCategoryCopyWith<$Res> get category {
    return $DBCategoryCopyWith<$Res>(_self.category, (value) {
      return _then(_self.copyWith(category: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _DBTransactionResponse implements DBTransactionResponse {
  const _DBTransactionResponse(
      {required this.id,
      required this.account,
      required this.category,
      required this.amount,
      required this.transactionDate,
      required this.comment,
      required this.createdAt,
      required this.updatedAt});
  factory _DBTransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$DBTransactionResponseFromJson(json);

  @override
  final int id;
  @override
  final DBAccount account;
  @override
  final DBCategory category;
  @override
  final String amount;
  @override
  final String transactionDate;
  @override
  final String? comment;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  /// Create a copy of DBTransactionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DBTransactionResponseCopyWith<_DBTransactionResponse> get copyWith =>
      __$DBTransactionResponseCopyWithImpl<_DBTransactionResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DBTransactionResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DBTransactionResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.category, category) ||
                other.category == category) &&
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
  int get hashCode => Object.hash(runtimeType, id, account, category, amount,
      transactionDate, comment, createdAt, updatedAt);

  @override
  String toString() {
    return 'DBTransactionResponse(id: $id, account: $account, category: $category, amount: $amount, transactionDate: $transactionDate, comment: $comment, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$DBTransactionResponseCopyWith<$Res>
    implements $DBTransactionResponseCopyWith<$Res> {
  factory _$DBTransactionResponseCopyWith(_DBTransactionResponse value,
          $Res Function(_DBTransactionResponse) _then) =
      __$DBTransactionResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      DBAccount account,
      DBCategory category,
      String amount,
      String transactionDate,
      String? comment,
      String createdAt,
      String updatedAt});

  @override
  $DBAccountCopyWith<$Res> get account;
  @override
  $DBCategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$DBTransactionResponseCopyWithImpl<$Res>
    implements _$DBTransactionResponseCopyWith<$Res> {
  __$DBTransactionResponseCopyWithImpl(this._self, this._then);

  final _DBTransactionResponse _self;
  final $Res Function(_DBTransactionResponse) _then;

  /// Create a copy of DBTransactionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? account = null,
    Object? category = null,
    Object? amount = null,
    Object? transactionDate = null,
    Object? comment = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_DBTransactionResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      account: null == account
          ? _self.account
          : account // ignore: cast_nullable_to_non_nullable
              as DBAccount,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as DBCategory,
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
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of DBTransactionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DBAccountCopyWith<$Res> get account {
    return $DBAccountCopyWith<$Res>(_self.account, (value) {
      return _then(_self.copyWith(account: value));
    });
  }

  /// Create a copy of DBTransactionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DBCategoryCopyWith<$Res> get category {
    return $DBCategoryCopyWith<$Res>(_self.category, (value) {
      return _then(_self.copyWith(category: value));
    });
  }
}

// dart format on
