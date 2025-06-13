// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiCategory {
  int get id;
  String get name;
  String get emoji;
  bool get isIncome;

  /// Create a copy of ApiCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApiCategoryCopyWith<ApiCategory> get copyWith =>
      _$ApiCategoryCopyWithImpl<ApiCategory>(this as ApiCategory, _$identity);

  /// Serializes this ApiCategory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            (identical(other.isIncome, isIncome) ||
                other.isIncome == isIncome));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, emoji, isIncome);

  @override
  String toString() {
    return 'ApiCategory(id: $id, name: $name, emoji: $emoji, isIncome: $isIncome)';
  }
}

/// @nodoc
abstract mixin class $ApiCategoryCopyWith<$Res> {
  factory $ApiCategoryCopyWith(
          ApiCategory value, $Res Function(ApiCategory) _then) =
      _$ApiCategoryCopyWithImpl;
  @useResult
  $Res call({int id, String name, String emoji, bool isIncome});
}

/// @nodoc
class _$ApiCategoryCopyWithImpl<$Res> implements $ApiCategoryCopyWith<$Res> {
  _$ApiCategoryCopyWithImpl(this._self, this._then);

  final ApiCategory _self;
  final $Res Function(ApiCategory) _then;

  /// Create a copy of ApiCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? emoji = null,
    Object? isIncome = null,
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
      emoji: null == emoji
          ? _self.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      isIncome: null == isIncome
          ? _self.isIncome
          : isIncome // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ApiCategory implements ApiCategory {
  const _ApiCategory(
      {required this.id,
      required this.name,
      required this.emoji,
      required this.isIncome});
  factory _ApiCategory.fromJson(Map<String, dynamic> json) =>
      _$ApiCategoryFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String emoji;
  @override
  final bool isIncome;

  /// Create a copy of ApiCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ApiCategoryCopyWith<_ApiCategory> get copyWith =>
      __$ApiCategoryCopyWithImpl<_ApiCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ApiCategoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            (identical(other.isIncome, isIncome) ||
                other.isIncome == isIncome));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, emoji, isIncome);

  @override
  String toString() {
    return 'ApiCategory(id: $id, name: $name, emoji: $emoji, isIncome: $isIncome)';
  }
}

/// @nodoc
abstract mixin class _$ApiCategoryCopyWith<$Res>
    implements $ApiCategoryCopyWith<$Res> {
  factory _$ApiCategoryCopyWith(
          _ApiCategory value, $Res Function(_ApiCategory) _then) =
      __$ApiCategoryCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String name, String emoji, bool isIncome});
}

/// @nodoc
class __$ApiCategoryCopyWithImpl<$Res> implements _$ApiCategoryCopyWith<$Res> {
  __$ApiCategoryCopyWithImpl(this._self, this._then);

  final _ApiCategory _self;
  final $Res Function(_ApiCategory) _then;

  /// Create a copy of ApiCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? emoji = null,
    Object? isIncome = null,
  }) {
    return _then(_ApiCategory(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emoji: null == emoji
          ? _self.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      isIncome: null == isIncome
          ? _self.isIncome
          : isIncome // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
