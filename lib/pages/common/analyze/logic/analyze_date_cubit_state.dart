part of 'analyze_date_cubit.dart';

@freezed
class AnalyzeDateCubitState with _$AnalyzeDateCubitState {
  final DateTime startTime;
  final DateTime endTime;

  AnalyzeDateCubitState({required this.startTime, required this.endTime});

  factory AnalyzeDateCubitState.initial() => AnalyzeDateCubitState(
      startTime: DateTime.now()
          .subtract(Duration(days: 30))
          .copyWith(hour: 0, minute: 0),
      endTime: DateTime.now().copyWith(hour: 23, minute: 59));
}
