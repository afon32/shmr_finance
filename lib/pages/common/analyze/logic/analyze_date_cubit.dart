import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'analyze_date_cubit_state.dart';
part 'analyze_date_cubit.freezed.dart';

class AnalyzeDateCubit extends Cubit<AnalyzeDateCubitState> {
  AnalyzeDateCubit() : super(AnalyzeDateCubitState.initial());

  void updateStartTime(DateTime? startTime) {
    if (startTime != null) {
      if (startTime.isAfter(state.endTime)) {
        emit(state.copyWith(
            startTime: startTime.copyWith(hour: 0, minute: 0),
            endTime: startTime.copyWith(hour: 23, minute: 59)));
      } else {
        emit(state.copyWith(startTime: startTime.copyWith(hour: 0, minute: 0)));
      }
    }
  }

  void updateEndTime(DateTime? endTime) {
    if (endTime != null) {
      if (endTime.isBefore(state.startTime)) {
        emit(state.copyWith(
            startTime: endTime.copyWith(hour: 0, minute: 0),
            endTime: endTime.copyWith(hour: 23, minute: 59)));
      } else {
        emit(state.copyWith(endTime: endTime.copyWith(hour: 23, minute: 59)));
      }
    }
  }
}
