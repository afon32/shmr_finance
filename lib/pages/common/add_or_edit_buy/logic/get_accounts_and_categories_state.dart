part of './get_accounts_and_categories_cubit.dart';


@freezed
abstract class GetAccountsAndCategoriesState with _$GetAccountsAndCategoriesState {
  const factory GetAccountsAndCategoriesState.loading() = Loading;
  const factory GetAccountsAndCategoriesState.content(GetAccountsAndCategoriesViewModel content) = Content;
  const factory GetAccountsAndCategoriesState.error(Exception error) = CustomError;
}
