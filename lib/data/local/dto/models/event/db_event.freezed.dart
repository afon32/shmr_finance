// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'db_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DBEvent {
  Map<String, dynamic> get request;

  /// Create a copy of DBEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DBEventCopyWith<DBEvent> get copyWith =>
      _$DBEventCopyWithImpl<DBEvent>(this as DBEvent, _$identity);

  /// Serializes this DBEvent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DBEvent &&
            const DeepCollectionEquality().equals(other.request, request));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(request));

  @override
  String toString() {
    return 'DBEvent(request: $request)';
  }
}

/// @nodoc
abstract mixin class $DBEventCopyWith<$Res> {
  factory $DBEventCopyWith(DBEvent value, $Res Function(DBEvent) _then) =
      _$DBEventCopyWithImpl;
  @useResult
  $Res call({Map<String, dynamic> request});
}

/// @nodoc
class _$DBEventCopyWithImpl<$Res> implements $DBEventCopyWith<$Res> {
  _$DBEventCopyWithImpl(this._self, this._then);

  final DBEvent _self;
  final $Res Function(DBEvent) _then;

  /// Create a copy of DBEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_self.copyWith(
      request: null == request
          ? _self.request
          : request // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DBEvent implements DBEvent {
  const _DBEvent({required final Map<String, dynamic> request})
      : _request = request;
  factory _DBEvent.fromJson(Map<String, dynamic> json) =>
      _$DBEventFromJson(json);

  final Map<String, dynamic> _request;
  @override
  Map<String, dynamic> get request {
    if (_request is EqualUnmodifiableMapView) return _request;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_request);
  }

  /// Create a copy of DBEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DBEventCopyWith<_DBEvent> get copyWith =>
      __$DBEventCopyWithImpl<_DBEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DBEventToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DBEvent &&
            const DeepCollectionEquality().equals(other._request, _request));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_request));

  @override
  String toString() {
    return 'DBEvent(request: $request)';
  }
}

/// @nodoc
abstract mixin class _$DBEventCopyWith<$Res> implements $DBEventCopyWith<$Res> {
  factory _$DBEventCopyWith(_DBEvent value, $Res Function(_DBEvent) _then) =
      __$DBEventCopyWithImpl;
  @override
  @useResult
  $Res call({Map<String, dynamic> request});
}

/// @nodoc
class __$DBEventCopyWithImpl<$Res> implements _$DBEventCopyWith<$Res> {
  __$DBEventCopyWithImpl(this._self, this._then);

  final _DBEvent _self;
  final $Res Function(_DBEvent) _then;

  /// Create a copy of DBEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? request = null,
  }) {
    return _then(_DBEvent(
      request: null == request
          ? _self._request
          : request // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

// dart format on
