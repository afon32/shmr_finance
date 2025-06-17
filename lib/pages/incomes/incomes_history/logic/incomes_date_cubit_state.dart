part of 'incomes_date_cubit.dart';

@freezed
class IncomesDateCubitState with _$IncomesDateCubitState {
  final DateTime startTime;
  final DateTime endTime;

  IncomesDateCubitState({required this.startTime, required this.endTime});

  factory IncomesDateCubitState.initial() => IncomesDateCubitState(
      startTime: DateTime.now().copyWith(hour: 0, minute: 0),
      endTime: DateTime.now().copyWith(hour: 23, minute: 59));
}
