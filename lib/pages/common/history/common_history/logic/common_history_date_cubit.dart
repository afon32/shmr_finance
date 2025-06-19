import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_history_date_cubit_state.dart';
part 'common_history_date_cubit.freezed.dart';

class CommonHistoryDateCubit extends Cubit<CommonHistoryDateCubitState> {
  CommonHistoryDateCubit() : super(CommonHistoryDateCubitState.initial());

  void updateStartTime(DateTime? startTime) {
    if (startTime != null) {
      if (startTime.isAfter(state.endTime)) {
        emit(state.copyWith(startTime: startTime, endTime: startTime));
      } else {
        emit(state.copyWith(startTime: startTime));
      }
    }
  }

  void updateEndTime(DateTime? endTime) {
    if (endTime != null) {
      if (endTime.isBefore(state.startTime)) {
        emit(state.copyWith(startTime: endTime, endTime: endTime));
      } else {
        emit(state.copyWith(endTime: endTime));
      }
    }
  }
}
