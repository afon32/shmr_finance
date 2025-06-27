part of 'categories_page_cubit.dart';

@freezed
abstract class CategoriesPageState with _$CategoriesPageState {
  const factory CategoriesPageState.loading() = Loading;
  const factory CategoriesPageState.content(CategoriesPageViewModel content) = Content;
  const factory CategoriesPageState.error(Exception error) = CustomError;
}
