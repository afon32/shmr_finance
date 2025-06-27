// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analyze_date_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnalyzeDateCubitState {
  DateTime get startTime;
  DateTime get endTime;

  /// Create a copy of AnalyzeDateCubitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnalyzeDateCubitStateCopyWith<AnalyzeDateCubitState> get copyWith =>
      _$AnalyzeDateCubitStateCopyWithImpl<AnalyzeDateCubitState>(
          this as AnalyzeDateCubitState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnalyzeDateCubitState &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime);

  @override
  String toString() {
    return 'AnalyzeDateCubitState(startTime: $startTime, endTime: $endTime)';
  }
}

/// @nodoc
abstract mixin class $AnalyzeDateCubitStateCopyWith<$Res> {
  factory $AnalyzeDateCubitStateCopyWith(AnalyzeDateCubitState value,
          $Res Function(AnalyzeDateCubitState) _then) =
      _$AnalyzeDateCubitStateCopyWithImpl;
  @useResult
  $Res call({DateTime startTime, DateTime endTime});
}

/// @nodoc
class _$AnalyzeDateCubitStateCopyWithImpl<$Res>
    implements $AnalyzeDateCubitStateCopyWith<$Res> {
  _$AnalyzeDateCubitStateCopyWithImpl(this._self, this._then);

  final AnalyzeDateCubitState _self;
  final $Res Function(AnalyzeDateCubitState) _then;

  /// Create a copy of AnalyzeDateCubitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(AnalyzeDateCubitState(
      startTime: null == startTime
          ? _self.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _self.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
