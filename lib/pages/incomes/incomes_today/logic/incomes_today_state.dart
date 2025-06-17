part of 'incomes_today_cubit.dart';

@freezed
abstract class IncomesTodayState with _$IncomesTodayState {
  const factory IncomesTodayState.loading() = Loading;
  const factory IncomesTodayState.content(IncomesTodayViewModel content) = Content;
  const factory IncomesTodayState.error(Exception error) = CustomError;
}
