import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'incomes_date_cubit_state.dart';
part 'incomes_date_cubit.freezed.dart';

class IncomesDateCubit extends Cubit<IncomesDateCubitState> {
  IncomesDateCubit() : super(IncomesDateCubitState.initial());

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
