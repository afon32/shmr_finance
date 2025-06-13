import 'package:shmr_finance/model/category.dart';
import 'package:shmr_finance/service/api_util.dart';

import '../domain/repositories/categories_repository.dart';

class CategoriesRepositoryImpl implements CategoriesRepository {
  final ApiUtil _apiUtil;

  CategoriesRepositoryImpl({required ApiUtil apiUtil}) : _apiUtil = apiUtil;

  @override
  Future<List<Category>> getAllCategories() {
    _apiUtil.getAllCategories();
    throw UnimplementedError();
  }

  @override
  Future<List<Category>> getCategoriesFromType(bool isIncome) {
    _apiUtil.getCategoryByType(isIncome);
    throw UnimplementedError();
  }
}
