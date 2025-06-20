part of 'common_history_cubit.dart';

@freezed
abstract class CommonHistoryState with _$CommonHistoryState {
  const factory CommonHistoryState.loading() = Loading;
  const factory CommonHistoryState.content(CommonHistoryViewModel content, SortType sortType) = Content;
  const factory CommonHistoryState.error(Exception error) = CustomError;
}
