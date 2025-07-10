// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiAccountHistory {
  int get id;
  int get accountId;
  String get changeType;
  ApiAccountState get previousState;
  ApiAccountState get newState;
  String get changeTimestamp;
  String get createdAt;

  /// Create a copy of ApiAccountHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApiAccountHistoryCopyWith<ApiAccountHistory> get copyWith =>
      _$ApiAccountHistoryCopyWithImpl<ApiAccountHistory>(
          this as ApiAccountHistory, _$identity);

  /// Serializes this ApiAccountHistory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiAccountHistory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.changeType, changeType) ||
                other.changeType == changeType) &&
            (identical(other.previousState, previousState) ||
                other.previousState == previousState) &&
            (identical(other.newState, newState) ||
                other.newState == newState) &&
            (identical(other.changeTimestamp, changeTimestamp) ||
                other.changeTimestamp == changeTimestamp) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, accountId, changeType,
      previousState, newState, changeTimestamp, createdAt);

  @override
  String toString() {
    return 'ApiAccountHistory(id: $id, accountId: $accountId, changeType: $changeType, previousState: $previousState, newState: $newState, changeTimestamp: $changeTimestamp, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $ApiAccountHistoryCopyWith<$Res> {
  factory $ApiAccountHistoryCopyWith(
          ApiAccountHistory value, $Res Function(ApiAccountHistory) _then) =
      _$ApiAccountHistoryCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      int accountId,
      String changeType,
      ApiAccountState previousState,
      ApiAccountState newState,
      String changeTimestamp,
      String createdAt});

  $ApiAccountStateCopyWith<$Res> get previousState;
  $ApiAccountStateCopyWith<$Res> get newState;
}

/// @nodoc
class _$ApiAccountHistoryCopyWithImpl<$Res>
    implements $ApiAccountHistoryCopyWith<$Res> {
  _$ApiAccountHistoryCopyWithImpl(this._self, this._then);

  final ApiAccountHistory _self;
  final $Res Function(ApiAccountHistory) _then;

  /// Create a copy of ApiAccountHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountId = null,
    Object? changeType = null,
    Object? previousState = null,
    Object? newState = null,
    Object? changeTimestamp = null,
    Object? createdAt = null,
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
      changeType: null == changeType
          ? _self.changeType
          : changeType // ignore: cast_nullable_to_non_nullable
              as String,
      previousState: null == previousState
          ? _self.previousState
          : previousState // ignore: cast_nullable_to_non_nullable
              as ApiAccountState,
      newState: null == newState
          ? _self.newState
          : newState // ignore: cast_nullable_to_non_nullable
              as ApiAccountState,
      changeTimestamp: null == changeTimestamp
          ? _self.changeTimestamp
          : changeTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of ApiAccountHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiAccountStateCopyWith<$Res> get previousState {
    return $ApiAccountStateCopyWith<$Res>(_self.previousState, (value) {
      return _then(_self.copyWith(previousState: value));
    });
  }

  /// Create a copy of ApiAccountHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiAccountStateCopyWith<$Res> get newState {
    return $ApiAccountStateCopyWith<$Res>(_self.newState, (value) {
      return _then(_self.copyWith(newState: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _ApiAccountHistory implements ApiAccountHistory {
  const _ApiAccountHistory(
      {required this.id,
      required this.accountId,
      required this.changeType,
      required this.previousState,
      required this.newState,
      required this.changeTimestamp,
      required this.createdAt});
  factory _ApiAccountHistory.fromJson(Map<String, dynamic> json) =>
      _$ApiAccountHistoryFromJson(json);

  @override
  final int id;
  @override
  final int accountId;
  @override
  final String changeType;
  @override
  final ApiAccountState previousState;
  @override
  final ApiAccountState newState;
  @override
  final String changeTimestamp;
  @override
  final String createdAt;

  /// Create a copy of ApiAccountHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ApiAccountHistoryCopyWith<_ApiAccountHistory> get copyWith =>
      __$ApiAccountHistoryCopyWithImpl<_ApiAccountHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ApiAccountHistoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiAccountHistory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.changeType, changeType) ||
                other.changeType == changeType) &&
            (identical(other.previousState, previousState) ||
                other.previousState == previousState) &&
            (identical(other.newState, newState) ||
                other.newState == newState) &&
            (identical(other.changeTimestamp, changeTimestamp) ||
                other.changeTimestamp == changeTimestamp) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, accountId, changeType,
      previousState, newState, changeTimestamp, createdAt);

  @override
  String toString() {
    return 'ApiAccountHistory(id: $id, accountId: $accountId, changeType: $changeType, previousState: $previousState, newState: $newState, changeTimestamp: $changeTimestamp, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$ApiAccountHistoryCopyWith<$Res>
    implements $ApiAccountHistoryCopyWith<$Res> {
  factory _$ApiAccountHistoryCopyWith(
          _ApiAccountHistory value, $Res Function(_ApiAccountHistory) _then) =
      __$ApiAccountHistoryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      int accountId,
      String changeType,
      ApiAccountState previousState,
      ApiAccountState newState,
      String changeTimestamp,
      String createdAt});

  @override
  $ApiAccountStateCopyWith<$Res> get previousState;
  @override
  $ApiAccountStateCopyWith<$Res> get newState;
}

/// @nodoc
class __$ApiAccountHistoryCopyWithImpl<$Res>
    implements _$ApiAccountHistoryCopyWith<$Res> {
  __$ApiAccountHistoryCopyWithImpl(this._self, this._then);

  final _ApiAccountHistory _self;
  final $Res Function(_ApiAccountHistory) _then;

  /// Create a copy of ApiAccountHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? accountId = null,
    Object? changeType = null,
    Object? previousState = null,
    Object? newState = null,
    Object? changeTimestamp = null,
    Object? createdAt = null,
  }) {
    return _then(_ApiAccountHistory(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      accountId: null == accountId
          ? _self.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      changeType: null == changeType
          ? _self.changeType
          : changeType // ignore: cast_nullable_to_non_nullable
              as String,
      previousState: null == previousState
          ? _self.previousState
          : previousState // ignore: cast_nullable_to_non_nullable
              as ApiAccountState,
      newState: null == newState
          ? _self.newState
          : newState // ignore: cast_nullable_to_non_nullable
              as ApiAccountState,
      changeTimestamp: null == changeTimestamp
          ? _self.changeTimestamp
          : changeTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of ApiAccountHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiAccountStateCopyWith<$Res> get previousState {
    return $ApiAccountStateCopyWith<$Res>(_self.previousState, (value) {
      return _then(_self.copyWith(previousState: value));
    });
  }

  /// Create a copy of ApiAccountHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiAccountStateCopyWith<$Res> get newState {
    return $ApiAccountStateCopyWith<$Res>(_self.newState, (value) {
      return _then(_self.copyWith(newState: value));
    });
  }
}

// dart format on
