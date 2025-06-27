import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fuzzy/fuzzy.dart';
import 'package:shmr_finance/core/base/use_case_abstract/base_use_case.dart';
import 'package:shmr_finance/features/categories/domain/use_cases/get_all_categories_use_case.dart';

part 'categories_page_view_model.dart';
part 'categories_page_state.dart';
part 'categories_page_cubit.freezed.dart';

class CategoriesPageCubit extends Cubit<CategoriesPageState> {
  final GetAllCategoriesUseCase useCase;
  late final Fuzzy<CategoryItem> fuseItems;

  CategoriesPageCubit({required this.useCase})
      : super(CategoriesPageState.loading());

  void getCategories() async {
    emit(CategoriesPageState.loading());
    try {
      final response = await useCase.execute(EmptyUseCaseRequest());
      final viewModel = CategoriesPageViewModel.buildWith(response
          .map((e) => CategoryItem.buildWith(e.id, e.name, e.emoji))
          .toList());

      fuseItems = Fuzzy(viewModel.items,
          options: FuzzyOptions(keys: [
            WeightedKey<CategoryItem>(
                name: 'name', getter: (item) => item.name, weight: 1.0)
          ]));

      emit(CategoriesPageState.content(viewModel));
    } on Exception catch (e) {
      emit(CategoriesPageState.error(e));
    }
  }

  void fuzzySearchByName(String word) {
    if (state is Content) {
      final newItems = fuseItems.search(word);
      final newViewModel = CategoriesPageViewModel.buildWith(
          newItems.map((e) => e.item).toList());
      emit(CategoriesPageState.content(newViewModel));
    }
  }
}
