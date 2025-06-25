part of 'score_page_cubit.dart';

@freezed
abstract class ScorePageState with _$ScorePageState {
  const factory ScorePageState.loading() = Loading;
  const factory ScorePageState.content(ScorePageViewModel content) = Content;
  const factory ScorePageState.error(Exception error) = CustomError;
}
