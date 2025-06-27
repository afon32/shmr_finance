part of 'update_score_page_cubit.dart';

@freezed
abstract class UpdateScorePageState with _$UpdateScorePageState {
  const factory UpdateScorePageState.loading() = Loading;
  const factory UpdateScorePageState.content(UpdateScorePageViewModel content) = Content;
  const factory UpdateScorePageState.error(Exception error) = CustomError;
}
