import 'package:shmr_finance/model/category.dart';

abstract class CategoriesRepository {
  Future<List<Category>> getAllCategories();
  
  Future<List<Category>> getCategoriesFromType(bool isIncome);
}
