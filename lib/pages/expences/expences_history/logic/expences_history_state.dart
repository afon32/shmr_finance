part of 'expences_history_cubit.dart';

@freezed
abstract class ExpencesHistoryState with _$ExpencesHistoryState {
  const factory ExpencesHistoryState.loading() = Loading;
  const factory ExpencesHistoryState.content(ExpencesHistoryViewModel content, ExpencesSortType sortType) = Content;
  const factory ExpencesHistoryState.error(Exception error) = CustomError;
}
