import 'package:shmr_finance/core/base/use_case_abstract/base_use_case.dart';
import 'package:shmr_finance/model/category.dart';

import '../repositories/categories_repository.dart';

class GetCategoriesFromTypeUseCase
    implements BaseUseCase<List<Category>, bool> {
  final CategoriesRepository _repository;

  GetCategoriesFromTypeUseCase({required CategoriesRepository repository})
      : _repository = repository;

  @override
  Future<List<Category>> execute(bool isIncome) =>
      _repository.getCategoriesFromType(isIncome);
}
