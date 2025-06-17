part of 'expences_date_cubit.dart';

@freezed
class ExpencesDateCubitState with _$ExpencesDateCubitState {
  final DateTime startTime;
  final DateTime endTime;

  ExpencesDateCubitState({required this.startTime, required this.endTime});

  factory ExpencesDateCubitState.initial() => ExpencesDateCubitState(
      startTime: DateTime.now().copyWith(hour: 0, minute: 0),
      endTime: DateTime.now().copyWith(hour: 23, minute: 59));
}
