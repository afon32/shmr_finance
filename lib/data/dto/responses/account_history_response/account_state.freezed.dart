// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiAccountState {
  int get id;
  String get name;
  String get balance;
  String get currency;

  /// Create a copy of ApiAccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApiAccountStateCopyWith<ApiAccountState> get copyWith =>
      _$ApiAccountStateCopyWithImpl<ApiAccountState>(
          this as ApiAccountState, _$identity);

  /// Serializes this ApiAccountState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiAccountState &&
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
    return 'ApiAccountState(id: $id, name: $name, balance: $balance, currency: $currency)';
  }
}

/// @nodoc
abstract mixin class $ApiAccountStateCopyWith<$Res> {
  factory $ApiAccountStateCopyWith(
          ApiAccountState value, $Res Function(ApiAccountState) _then) =
      _$ApiAccountStateCopyWithImpl;
  @useResult
  $Res call({int id, String name, String balance, String currency});
}

/// @nodoc
class _$ApiAccountStateCopyWithImpl<$Res>
    implements $ApiAccountStateCopyWith<$Res> {
  _$ApiAccountStateCopyWithImpl(this._self, this._then);

  final ApiAccountState _self;
  final $Res Function(ApiAccountState) _then;

  /// Create a copy of ApiAccountState
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

/// @nodoc
@JsonSerializable()
class _ApiAccountState implements ApiAccountState {
  const _ApiAccountState(
      {required this.id,
      required this.name,
      required this.balance,
      required this.currency});
  factory _ApiAccountState.fromJson(Map<String, dynamic> json) =>
      _$ApiAccountStateFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String balance;
  @override
  final String currency;

  /// Create a copy of ApiAccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ApiAccountStateCopyWith<_ApiAccountState> get copyWith =>
      __$ApiAccountStateCopyWithImpl<_ApiAccountState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ApiAccountStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiAccountState &&
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
    return 'ApiAccountState(id: $id, name: $name, balance: $balance, currency: $currency)';
  }
}

/// @nodoc
abstract mixin class _$ApiAccountStateCopyWith<$Res>
    implements $ApiAccountStateCopyWith<$Res> {
  factory _$ApiAccountStateCopyWith(
          _ApiAccountState value, $Res Function(_ApiAccountState) _then) =
      __$ApiAccountStateCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String name, String balance, String currency});
}

/// @nodoc
class __$ApiAccountStateCopyWithImpl<$Res>
    implements _$ApiAccountStateCopyWith<$Res> {
  __$ApiAccountStateCopyWithImpl(this._self, this._then);

  final _ApiAccountState _self;
  final $Res Function(_ApiAccountState) _then;

  /// Create a copy of ApiAccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? balance = null,
    Object? currency = null,
  }) {
    return _then(_ApiAccountState(
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
