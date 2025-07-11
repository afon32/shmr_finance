import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shmr_finance/core/base/use_case_abstract/common_requests/empty_request.dart';
import 'package:shmr_finance/features/account/domain/use_cases/get_all_accounts_use_case.dart';
import 'package:shmr_finance/features/categories/domain/use_cases/get_all_categories_use_case.dart';
import 'package:shmr_finance/features/categories/domain/use_cases/get_categories_from_type_use_case.dart';
import 'package:shmr_finance/model/ui_items/account_item.dart';
import 'package:shmr_finance/model/ui_items/category_item.dart';
import 'package:shmr_finance/pages/common/history/types/history_page_type.dart';

import 'get_accounts_and_categories_view_model.dart';

part 'get_accounts_and_categories_state.dart';
part 'get_accounts_and_categories_cubit.freezed.dart';

class GetAccountsAndCategoriesCubit
    extends Cubit<GetAccountsAndCategoriesState> {
  late final GetAccountsAndCategoriesState initialState;
  final GetAllAccountsUseCase getAllAccountsUseCase;
  final GetCategoriesFromTypeUseCase getCategoriesFromTypeUseCase;
  final HistoryPageType pageType;

  GetAccountsAndCategoriesCubit(
      {required this.getAllAccountsUseCase,
      required this.getCategoriesFromTypeUseCase,
      required this.pageType})
      : super(GetAccountsAndCategoriesState.loading());

  void getData() async {
    final isIncome = pageType == HistoryPageType.incomes;

    final accountResult =
        await getAllAccountsUseCase.execute(EmptyUseCaseRequest());

    final accountItems =
        accountResult.map((e) => AccountItem(id: e.id, name: e.name)).toList();

    final categoriesResult =
        await getCategoriesFromTypeUseCase.execute(isIncome);

    final categoriesItems = categoriesResult
        .map((e) => CategoryItem(id: e.id, name: e.name))
        .toList();

    final newStateModel = GetAccountsAndCategoriesViewModel(
        accountItems: accountItems, categoryItems: categoriesItems);

    emit(GetAccountsAndCategoriesState.content(newStateModel));
  }
}
