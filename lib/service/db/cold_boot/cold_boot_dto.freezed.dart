// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cold_boot_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ColdBootDto {
  int get userId;

  /// Холодный старт - true
  @JsonKey(name: 'cold_boot', defaultValue: true)
  bool get isColdBoot;

  /// Create a copy of ColdBootDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ColdBootDtoCopyWith<ColdBootDto> get copyWith =>
      _$ColdBootDtoCopyWithImpl<ColdBootDto>(this as ColdBootDto, _$identity);

  /// Serializes this ColdBootDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ColdBootDto &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isColdBoot, isColdBoot) ||
                other.isColdBoot == isColdBoot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, isColdBoot);

  @override
  String toString() {
    return 'ColdBootDto(userId: $userId, isColdBoot: $isColdBoot)';
  }
}

/// @nodoc
abstract mixin class $ColdBootDtoCopyWith<$Res> {
  factory $ColdBootDtoCopyWith(
          ColdBootDto value, $Res Function(ColdBootDto) _then) =
      _$ColdBootDtoCopyWithImpl;
  @useResult
  $Res call(
      {int userId,
      @JsonKey(name: 'cold_boot', defaultValue: true) bool isColdBoot});
}

/// @nodoc
class _$ColdBootDtoCopyWithImpl<$Res> implements $ColdBootDtoCopyWith<$Res> {
  _$ColdBootDtoCopyWithImpl(this._self, this._then);

  final ColdBootDto _self;
  final $Res Function(ColdBootDto) _then;

  /// Create a copy of ColdBootDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? isColdBoot = null,
  }) {
    return _then(_self.copyWith(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      isColdBoot: null == isColdBoot
          ? _self.isColdBoot
          : isColdBoot // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ColdBootDto implements ColdBootDto {
  const _ColdBootDto(
      {required this.userId,
      @JsonKey(name: 'cold_boot', defaultValue: true) this.isColdBoot = true});
  factory _ColdBootDto.fromJson(Map<String, dynamic> json) =>
      _$ColdBootDtoFromJson(json);

  @override
  final int userId;

  /// Холодный старт - true
  @override
  @JsonKey(name: 'cold_boot', defaultValue: true)
  final bool isColdBoot;

  /// Create a copy of ColdBootDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ColdBootDtoCopyWith<_ColdBootDto> get copyWith =>
      __$ColdBootDtoCopyWithImpl<_ColdBootDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ColdBootDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ColdBootDto &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isColdBoot, isColdBoot) ||
                other.isColdBoot == isColdBoot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, isColdBoot);

  @override
  String toString() {
    return 'ColdBootDto(userId: $userId, isColdBoot: $isColdBoot)';
  }
}

/// @nodoc
abstract mixin class _$ColdBootDtoCopyWith<$Res>
    implements $ColdBootDtoCopyWith<$Res> {
  factory _$ColdBootDtoCopyWith(
          _ColdBootDto value, $Res Function(_ColdBootDto) _then) =
      __$ColdBootDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int userId,
      @JsonKey(name: 'cold_boot', defaultValue: true) bool isColdBoot});
}

/// @nodoc
class __$ColdBootDtoCopyWithImpl<$Res> implements _$ColdBootDtoCopyWith<$Res> {
  __$ColdBootDtoCopyWithImpl(this._self, this._then);

  final _ColdBootDto _self;
  final $Res Function(_ColdBootDto) _then;

  /// Create a copy of ColdBootDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userId = null,
    Object? isColdBoot = null,
  }) {
    return _then(_ColdBootDto(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      isColdBoot: null == isColdBoot
          ? _self.isColdBoot
          : isColdBoot // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
