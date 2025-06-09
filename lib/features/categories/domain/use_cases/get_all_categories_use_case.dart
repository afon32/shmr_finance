import 'package:shmr_finance/core/base/use_case_abstract/base_use_case.dart';
import 'package:shmr_finance/model/category.dart';

import '../repositories/categories_repository.dart';

class GetAllCategoriesUseCase
    implements BaseUseCase<List<Category>, EmptyUseCaseRequest> {
  final CategoriesRepository _repository;

  GetAllCategoriesUseCase({required CategoriesRepository repository})
      : _repository = repository;

  @override
  Future<List<Category>> execute(EmptyUseCaseRequest request) =>
      _repository.getAllCategories();
}
