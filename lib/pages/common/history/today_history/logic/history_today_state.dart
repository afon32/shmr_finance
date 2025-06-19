part of 'history_today_cubit.dart';

@freezed
abstract class HistoryTodayState with _$HistoryTodayState {
  const factory HistoryTodayState.loading() = Loading;
  const factory HistoryTodayState.content(HistoryTodayViewModel content) = Content;
  const factory HistoryTodayState.error(Exception error) = CustomError;
}
