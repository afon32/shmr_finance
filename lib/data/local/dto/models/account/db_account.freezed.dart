// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'db_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DBAccount {
  int get id;
  int get userId;
  String get name;
  String get balance;
  String get currency;
  String get createdAt;
  String get updatedAt;

  /// Create a copy of DBAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DBAccountCopyWith<DBAccount> get copyWith =>
      _$DBAccountCopyWithImpl<DBAccount>(this as DBAccount, _$identity);

  /// Serializes this DBAccount to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DBAccount &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, name, balance, currency, createdAt, updatedAt);

  @override
  String toString() {
    return 'DBAccount(id: $id, userId: $userId, name: $name, balance: $balance, currency: $currency, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $DBAccountCopyWith<$Res> {
  factory $DBAccountCopyWith(DBAccount value, $Res Function(DBAccount) _then) =
      _$DBAccountCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      int userId,
      String name,
      String balance,
      String currency,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class _$DBAccountCopyWithImpl<$Res> implements $DBAccountCopyWith<$Res> {
  _$DBAccountCopyWithImpl(this._self, this._then);

  final DBAccount _self;
  final $Res Function(DBAccount) _then;

  /// Create a copy of DBAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? balance = null,
    Object? currency = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
}

/// @nodoc
@JsonSerializable()
class _DBAccount implements DBAccount {
  const _DBAccount(
      {required this.id,
      required this.userId,
      required this.name,
      required this.balance,
      required this.currency,
      required this.createdAt,
      required this.updatedAt});
  factory _DBAccount.fromJson(Map<String, dynamic> json) =>
      _$DBAccountFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final String name;
  @override
  final String balance;
  @override
  final String currency;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  /// Create a copy of DBAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DBAccountCopyWith<_DBAccount> get copyWith =>
      __$DBAccountCopyWithImpl<_DBAccount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DBAccountToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DBAccount &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, name, balance, currency, createdAt, updatedAt);

  @override
  String toString() {
    return 'DBAccount(id: $id, userId: $userId, name: $name, balance: $balance, currency: $currency, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$DBAccountCopyWith<$Res>
    implements $DBAccountCopyWith<$Res> {
  factory _$DBAccountCopyWith(
          _DBAccount value, $Res Function(_DBAccount) _then) =
      __$DBAccountCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      int userId,
      String name,
      String balance,
      String currency,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class __$DBAccountCopyWithImpl<$Res> implements _$DBAccountCopyWith<$Res> {
  __$DBAccountCopyWithImpl(this._self, this._then);

  final _DBAccount _self;
  final $Res Function(_DBAccount) _then;

  /// Create a copy of DBAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? balance = null,
    Object? currency = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_DBAccount(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
}

// dart format on
