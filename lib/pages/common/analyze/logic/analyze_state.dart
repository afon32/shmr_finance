part of 'analyze_cubit.dart';

@freezed
abstract class AnalyzeState with _$AnalyzeState {
  const factory AnalyzeState.loading() = Loading;
  const factory AnalyzeState.content(AnalyzeViewModel content) = Content;
  const factory AnalyzeState.error(Exception error) = CustomError;
}
