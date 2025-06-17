part of 'incomes_history_cubit.dart';

@freezed
abstract class IncomesHistoryState with _$IncomesHistoryState {
  const factory IncomesHistoryState.loading() = Loading;
  const factory IncomesHistoryState.content(IncomesHistoryViewModel content, IncomesSortType sortType) = Content;
  const factory IncomesHistoryState.error(Exception error) = CustomError;
}
