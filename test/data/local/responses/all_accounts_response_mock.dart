import 'package:shmr_finance/data/local/dto/models/export.dart';

final List<DBCategory> getAllCategoriesDBMock = [
  DBCategory(id: 1, name: 'name', emoji: '🍎', isIncome: true),
  DBCategory(id: 2, name: 'name2', emoji: '🍎', isIncome: false),
];

final List<DBCategory> getCategoriesByFalseTrueDBMock = [
  DBCategory(id: 1, name: 'name', emoji: '🍎', isIncome: false),
  DBCategory(id: 2, name: 'name2', emoji: '🍎', isIncome: false),
];
