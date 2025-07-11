import 'package:shmr_finance/model/category.dart';
import 'package:shmr_finance/service/api/api_util.dart';

import '../domain/repositories/categories_repository.dart';

class CategoriesRepositoryImpl implements CategoriesRepository {
  final ApiUtil _apiUtil;

  CategoriesRepositoryImpl({required ApiUtil apiUtil}) : _apiUtil = apiUtil;

  @override
  Future<List<Category>> getAllCategories() {
    return _apiUtil.getAllCategories();
  }

  @override
  Future<List<Category>> getCategoriesFromType(bool isIncome) {
    return _apiUtil.getCategoryByType(isIncome);
  }
}
