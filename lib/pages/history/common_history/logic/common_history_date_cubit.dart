import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_history_date_cubit_state.dart';
part 'common_history_date_cubit.freezed.dart';

class CommonHistoryDateCubit extends Cubit<CommonHistoryDateCubitState> {
  CommonHistoryDateCubit() : super(CommonHistoryDateCubitState.initial());

  void updateStartTime(DateTime? startTime) {
    if (startTime != null) {
      emit(state.copyWith(startTime: startTime));
    }
  }

  void updateEndTime(DateTime? endTime) {
    if (endTime != null) {
      emit(state.copyWith(startTime: endTime));
    }
  }
}
