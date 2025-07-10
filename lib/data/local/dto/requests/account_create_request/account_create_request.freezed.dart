// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiAccountCreateRequest {
  String get name;
  String get balance;
  String get currency;

  /// Create a copy of ApiAccountCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApiAccountCreateRequestCopyWith<ApiAccountCreateRequest> get copyWith =>
      _$ApiAccountCreateRequestCopyWithImpl<ApiAccountCreateRequest>(
          this as ApiAccountCreateRequest, _$identity);

  /// Serializes this ApiAccountCreateRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiAccountCreateRequest &&
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
    return 'ApiAccountCreateRequest(name: $name, balance: $balance, currency: $currency)';
  }
}

/// @nodoc
abstract mixin class $ApiAccountCreateRequestCopyWith<$Res> {
  factory $ApiAccountCreateRequestCopyWith(ApiAccountCreateRequest value,
          $Res Function(ApiAccountCreateRequest) _then) =
      _$ApiAccountCreateRequestCopyWithImpl;
  @useResult
  $Res call({String name, String balance, String currency});
}

/// @nodoc
class _$ApiAccountCreateRequestCopyWithImpl<$Res>
    implements $ApiAccountCreateRequestCopyWith<$Res> {
  _$ApiAccountCreateRequestCopyWithImpl(this._self, this._then);

  final ApiAccountCreateRequest _self;
  final $Res Function(ApiAccountCreateRequest) _then;

  /// Create a copy of ApiAccountCreateRequest
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

/// @nodoc
@JsonSerializable()
class _ApiAccountCreateRequest implements ApiAccountCreateRequest {
  const _ApiAccountCreateRequest(
      {required this.name, required this.balance, required this.currency});
  factory _ApiAccountCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$ApiAccountCreateRequestFromJson(json);

  @override
  final String name;
  @override
  final String balance;
  @override
  final String currency;

  /// Create a copy of ApiAccountCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ApiAccountCreateRequestCopyWith<_ApiAccountCreateRequest> get copyWith =>
      __$ApiAccountCreateRequestCopyWithImpl<_ApiAccountCreateRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ApiAccountCreateRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiAccountCreateRequest &&
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
    return 'ApiAccountCreateRequest(name: $name, balance: $balance, currency: $currency)';
  }
}

/// @nodoc
abstract mixin class _$ApiAccountCreateRequestCopyWith<$Res>
    implements $ApiAccountCreateRequestCopyWith<$Res> {
  factory _$ApiAccountCreateRequestCopyWith(_ApiAccountCreateRequest value,
          $Res Function(_ApiAccountCreateRequest) _then) =
      __$ApiAccountCreateRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String balance, String currency});
}

/// @nodoc
class __$ApiAccountCreateRequestCopyWithImpl<$Res>
    implements _$ApiAccountCreateRequestCopyWith<$Res> {
  __$ApiAccountCreateRequestCopyWithImpl(this._self, this._then);

  final _ApiAccountCreateRequest _self;
  final $Res Function(_ApiAccountCreateRequest) _then;

  /// Create a copy of ApiAccountCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? balance = null,
    Object? currency = null,
  }) {
    return _then(_ApiAccountCreateRequest(
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
