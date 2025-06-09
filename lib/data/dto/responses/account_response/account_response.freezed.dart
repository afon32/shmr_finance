// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiAccountResponse {
  int get id;
  String get name;
  String get balance;
  String get currency;
  List<ApiStatItem> get incomeStats;
  List<ApiStatItem> get expenseStats;
  String get createdAt;
  String get updatedAt;

  /// Create a copy of ApiAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApiAccountResponseCopyWith<ApiAccountResponse> get copyWith =>
      _$ApiAccountResponseCopyWithImpl<ApiAccountResponse>(
          this as ApiAccountResponse, _$identity);

  /// Serializes this ApiAccountResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiAccountResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            const DeepCollectionEquality()
                .equals(other.incomeStats, incomeStats) &&
            const DeepCollectionEquality()
                .equals(other.expenseStats, expenseStats) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      balance,
      currency,
      const DeepCollectionEquality().hash(incomeStats),
      const DeepCollectionEquality().hash(expenseStats),
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'ApiAccountResponse(id: $id, name: $name, balance: $balance, currency: $currency, incomeStats: $incomeStats, expenseStats: $expenseStats, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $ApiAccountResponseCopyWith<$Res> {
  factory $ApiAccountResponseCopyWith(
          ApiAccountResponse value, $Res Function(ApiAccountResponse) _then) =
      _$ApiAccountResponseCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      String balance,
      String currency,
      List<ApiStatItem> incomeStats,
      List<ApiStatItem> expenseStats,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class _$ApiAccountResponseCopyWithImpl<$Res>
    implements $ApiAccountResponseCopyWith<$Res> {
  _$ApiAccountResponseCopyWithImpl(this._self, this._then);

  final ApiAccountResponse _self;
  final $Res Function(ApiAccountResponse) _then;

  /// Create a copy of ApiAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? balance = null,
    Object? currency = null,
    Object? incomeStats = null,
    Object? expenseStats = null,
    Object? createdAt = null,
    Object? updatedAt = null,
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
      incomeStats: null == incomeStats
          ? _self.incomeStats
          : incomeStats // ignore: cast_nullable_to_non_nullable
              as List<ApiStatItem>,
      expenseStats: null == expenseStats
          ? _self.expenseStats
          : expenseStats // ignore: cast_nullable_to_non_nullable
              as List<ApiStatItem>,
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
class _ApiAccountResponse implements ApiAccountResponse {
  const _ApiAccountResponse(
      {required this.id,
      required this.name,
      required this.balance,
      required this.currency,
      required final List<ApiStatItem> incomeStats,
      required final List<ApiStatItem> expenseStats,
      required this.createdAt,
      required this.updatedAt})
      : _incomeStats = incomeStats,
        _expenseStats = expenseStats;
  factory _ApiAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiAccountResponseFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String balance;
  @override
  final String currency;
  final List<ApiStatItem> _incomeStats;
  @override
  List<ApiStatItem> get incomeStats {
    if (_incomeStats is EqualUnmodifiableListView) return _incomeStats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incomeStats);
  }

  final List<ApiStatItem> _expenseStats;
  @override
  List<ApiStatItem> get expenseStats {
    if (_expenseStats is EqualUnmodifiableListView) return _expenseStats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenseStats);
  }

  @override
  final String createdAt;
  @override
  final String updatedAt;

  /// Create a copy of ApiAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ApiAccountResponseCopyWith<_ApiAccountResponse> get copyWith =>
      __$ApiAccountResponseCopyWithImpl<_ApiAccountResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ApiAccountResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiAccountResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            const DeepCollectionEquality()
                .equals(other._incomeStats, _incomeStats) &&
            const DeepCollectionEquality()
                .equals(other._expenseStats, _expenseStats) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      balance,
      currency,
      const DeepCollectionEquality().hash(_incomeStats),
      const DeepCollectionEquality().hash(_expenseStats),
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'ApiAccountResponse(id: $id, name: $name, balance: $balance, currency: $currency, incomeStats: $incomeStats, expenseStats: $expenseStats, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$ApiAccountResponseCopyWith<$Res>
    implements $ApiAccountResponseCopyWith<$Res> {
  factory _$ApiAccountResponseCopyWith(
          _ApiAccountResponse value, $Res Function(_ApiAccountResponse) _then) =
      __$ApiAccountResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String balance,
      String currency,
      List<ApiStatItem> incomeStats,
      List<ApiStatItem> expenseStats,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class __$ApiAccountResponseCopyWithImpl<$Res>
    implements _$ApiAccountResponseCopyWith<$Res> {
  __$ApiAccountResponseCopyWithImpl(this._self, this._then);

  final _ApiAccountResponse _self;
  final $Res Function(_ApiAccountResponse) _then;

  /// Create a copy of ApiAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? balance = null,
    Object? currency = null,
    Object? incomeStats = null,
    Object? expenseStats = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_ApiAccountResponse(
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
      incomeStats: null == incomeStats
          ? _self._incomeStats
          : incomeStats // ignore: cast_nullable_to_non_nullable
              as List<ApiStatItem>,
      expenseStats: null == expenseStats
          ? _self._expenseStats
          : expenseStats // ignore: cast_nullable_to_non_nullable
              as List<ApiStatItem>,
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
