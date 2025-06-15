part of 'expences_today_cubit.dart';

@freezed
abstract class ExpencesTodayState with _$ExpencesTodayState {
  const factory ExpencesTodayState.loading() = Loading;
  const factory ExpencesTodayState.content(ExpencesTodayViewModel content) = Content;
  const factory ExpencesTodayState.error(Exception error) = CustomError;
}
