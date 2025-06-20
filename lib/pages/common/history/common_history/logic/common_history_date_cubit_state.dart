part of 'common_history_date_cubit.dart';

@freezed
class CommonHistoryDateCubitState with _$CommonHistoryDateCubitState {
  final DateTime startTime;
  final DateTime endTime;

  CommonHistoryDateCubitState({required this.startTime, required this.endTime});

  factory CommonHistoryDateCubitState.initial() => CommonHistoryDateCubitState(
      startTime: DateTime.now()
          .subtract(Duration(days: 30))
          .copyWith(hour: 0, minute: 0),
      endTime: DateTime.now().copyWith(hour: 23, minute: 59));
}
