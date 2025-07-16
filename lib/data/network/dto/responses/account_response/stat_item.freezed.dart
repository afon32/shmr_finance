// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stat_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
ApiStatItem _$ApiStatItemFromJson(Map<String, dynamic> json) {
  return _StatItem.fromJson(json);
}

/// @nodoc
mixin _$ApiStatItem {
  int get categoryId;
  String get categoryName;
  String get emoji;
  String get amount;

  /// Create a copy of ApiStatItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApiStatItemCopyWith<ApiStatItem> get copyWith =>
      _$ApiStatItemCopyWithImpl<ApiStatItem>(this as ApiStatItem, _$identity);

  /// Serializes this ApiStatItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiStatItem &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, categoryId, categoryName, emoji, amount);

  @override
  String toString() {
    return 'ApiStatItem(categoryId: $categoryId, categoryName: $categoryName, emoji: $emoji, amount: $amount)';
  }
}

/// @nodoc
abstract mixin class $ApiStatItemCopyWith<$Res> {
  factory $ApiStatItemCopyWith(
          ApiStatItem value, $Res Function(ApiStatItem) _then) =
      _$ApiStatItemCopyWithImpl;
  @useResult
  $Res call({int categoryId, String categoryName, String emoji, String amount});
}

/// @nodoc
class _$ApiStatItemCopyWithImpl<$Res> implements $ApiStatItemCopyWith<$Res> {
  _$ApiStatItemCopyWithImpl(this._self, this._then);

  final ApiStatItem _self;
  final $Res Function(ApiStatItem) _then;

  /// Create a copy of ApiStatItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? categoryName = null,
    Object? emoji = null,
    Object? amount = null,
  }) {
    return _then(_self.copyWith(
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: null == categoryName
          ? _self.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      emoji: null == emoji
          ? _self.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ApiStatItem].
extension ApiStatItemPatterns on ApiStatItem {
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
    TResult Function(_StatItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StatItem() when $default != null:
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
    TResult Function(_StatItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StatItem():
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
    TResult? Function(_StatItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StatItem() when $default != null:
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
            int categoryId, String categoryName, String emoji, String amount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StatItem() when $default != null:
        return $default(
            _that.categoryId, _that.categoryName, _that.emoji, _that.amount);
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
            int categoryId, String categoryName, String emoji, String amount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StatItem():
        return $default(
            _that.categoryId, _that.categoryName, _that.emoji, _that.amount);
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
            int categoryId, String categoryName, String emoji, String amount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StatItem() when $default != null:
        return $default(
            _that.categoryId, _that.categoryName, _that.emoji, _that.amount);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StatItem implements ApiStatItem {
  const _StatItem(
      {required this.categoryId,
      required this.categoryName,
      required this.emoji,
      required this.amount});
  factory _StatItem.fromJson(Map<String, dynamic> json) =>
      _$StatItemFromJson(json);

  @override
  final int categoryId;
  @override
  final String categoryName;
  @override
  final String emoji;
  @override
  final String amount;

  /// Create a copy of ApiStatItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StatItemCopyWith<_StatItem> get copyWith =>
      __$StatItemCopyWithImpl<_StatItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StatItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StatItem &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, categoryId, categoryName, emoji, amount);

  @override
  String toString() {
    return 'ApiStatItem(categoryId: $categoryId, categoryName: $categoryName, emoji: $emoji, amount: $amount)';
  }
}

/// @nodoc
abstract mixin class _$StatItemCopyWith<$Res>
    implements $ApiStatItemCopyWith<$Res> {
  factory _$StatItemCopyWith(_StatItem value, $Res Function(_StatItem) _then) =
      __$StatItemCopyWithImpl;
  @override
  @useResult
  $Res call({int categoryId, String categoryName, String emoji, String amount});
}

/// @nodoc
class __$StatItemCopyWithImpl<$Res> implements _$StatItemCopyWith<$Res> {
  __$StatItemCopyWithImpl(this._self, this._then);

  final _StatItem _self;
  final $Res Function(_StatItem) _then;

  /// Create a copy of ApiStatItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? categoryId = null,
    Object? categoryName = null,
    Object? emoji = null,
    Object? amount = null,
  }) {
    return _then(_StatItem(
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: null == categoryName
          ? _self.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      emoji: null == emoji
          ? _self.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
