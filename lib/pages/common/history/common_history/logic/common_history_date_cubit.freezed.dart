// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_history_date_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommonHistoryDateCubitState {
  DateTime get startTime;
  DateTime get endTime;

  /// Create a copy of CommonHistoryDateCubitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CommonHistoryDateCubitStateCopyWith<CommonHistoryDateCubitState>
      get copyWith => _$CommonHistoryDateCubitStateCopyWithImpl<
              CommonHistoryDateCubitState>(
          this as CommonHistoryDateCubitState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CommonHistoryDateCubitState &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime);

  @override
  String toString() {
    return 'CommonHistoryDateCubitState(startTime: $startTime, endTime: $endTime)';
  }
}

/// @nodoc
abstract mixin class $CommonHistoryDateCubitStateCopyWith<$Res> {
  factory $CommonHistoryDateCubitStateCopyWith(
          CommonHistoryDateCubitState value,
          $Res Function(CommonHistoryDateCubitState) _then) =
      _$CommonHistoryDateCubitStateCopyWithImpl;
  @useResult
  $Res call({DateTime startTime, DateTime endTime});
}

/// @nodoc
class _$CommonHistoryDateCubitStateCopyWithImpl<$Res>
    implements $CommonHistoryDateCubitStateCopyWith<$Res> {
  _$CommonHistoryDateCubitStateCopyWithImpl(this._self, this._then);

  final CommonHistoryDateCubitState _self;
  final $Res Function(CommonHistoryDateCubitState) _then;

  /// Create a copy of CommonHistoryDateCubitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(CommonHistoryDateCubitState(
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
