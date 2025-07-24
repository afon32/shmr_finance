import 'package:shmr_finance/data/local/dto/models/export.dart';
import 'package:shmr_finance/model/category.dart';

final List<DBCategory> getAllCategoriesDBMock = [
  DBCategory(id: 1, name: 'name', emoji: '🍎', isIncome: true),
  DBCategory(id: 2, name: 'name2', emoji: '🍎', isIncome: false),
];

final List<DBCategory> getCategoriesByFalseTrueDBMock = [
  DBCategory(id: 1, name: 'name', emoji: '🍎', isIncome: false),
  DBCategory(id: 2, name: 'name2', emoji: '🍎', isIncome: false),
];

final List<Category> getCategoriesByFalseTrueDBToDomainMock = [
  Category(id: 1, name: 'name', emoji: '🍎', isIncome: false),
  Category(id: 2, name: 'name2', emoji: '🍎', isIncome: false),
];
