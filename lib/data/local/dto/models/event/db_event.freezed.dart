// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

/// Adds pattern-matching-related methods to [DBEvent].
extension DBEventPatterns on DBEvent {
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
    TResult Function(_DBEvent value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DBEvent() when $default != null:
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
    TResult Function(_DBEvent value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DBEvent():
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
    TResult? Function(_DBEvent value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DBEvent() when $default != null:
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
    TResult Function(Map<String, dynamic> request)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DBEvent() when $default != null:
        return $default(_that.request);
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
    TResult Function(Map<String, dynamic> request) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DBEvent():
        return $default(_that.request);
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
    TResult? Function(Map<String, dynamic> request)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DBEvent() when $default != null:
        return $default(_that.request);
      case _:
        return null;
    }
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
