import 'package:shmr_finance/data/network/dto/responses/export.dart';
import 'package:shmr_finance/model/category.dart';

final List<ApiCategory> getAllCategoriesNetworkMock = [
  ApiCategory(id: 1, name: 'Groceries', emoji: '🍎', isIncome: false),
  ApiCategory(id: 2, name: 'Транспорт', emoji: '🚗', isIncome: false),
  ApiCategory(id: 3, name: 'Зарплата', emoji: '💰', isIncome: true),
  ApiCategory(id: 4, name: 'Развлечения', emoji: '🎉', isIncome: false),
  ApiCategory(id: 5, name: 'Здоровье', emoji: '💊', isIncome: false),
  ApiCategory(id: 6, name: 'Подарки', emoji: '🎁', isIncome: false),
  ApiCategory(id: 7, name: 'Коммуналка', emoji: '🏠', isIncome: false),
  ApiCategory(id: 8, name: 'Образование', emoji: '📚', isIncome: false),
  ApiCategory(id: 9, name: 'Инвестиции', emoji: '📈', isIncome: true),
  ApiCategory(id: 10, name: 'Одежда', emoji: '👕', isIncome: false),
  ApiCategory(id: 11, name: 'Домашние животные', emoji: '🐾', isIncome: false),
  ApiCategory(id: 12, name: 'Путешествия', emoji: '✈️', isIncome: false),
  ApiCategory(id: 13, name: 'Спорт', emoji: '🏋️', isIncome: false),
  ApiCategory(id: 14, name: 'Фриланс', emoji: '💻', isIncome: true),
  ApiCategory(id: 15, name: 'Рестораны', emoji: '🍽️', isIncome: false),
  ApiCategory(id: 16, name: 'Путешествия', emoji: '✈️', isIncome: false),
  ApiCategory(id: 17, name: 'Спорт', emoji: '🏋️', isIncome: false),
  ApiCategory(id: 18, name: 'Фриланс', emoji: '💻', isIncome: true),
  ApiCategory(id: 19, name: 'Рестораны', emoji: '🍽️', isIncome: false),
  ApiCategory(id: 20, name: 'Рестораны', emoji: '🍽️', isIncome: false),
];

final List<ApiCategory> getCategoriesByTrueTypeNetworkMock = [
  ApiCategory(id: 3, name: 'Зарплата', emoji: '💰', isIncome: true),
  ApiCategory(id: 9, name: 'Инвестиции', emoji: '📈', isIncome: true),
  ApiCategory(id: 14, name: 'Фриланс', emoji: '💻', isIncome: true),
  ApiCategory(id: 18, name: 'Фриланс', emoji: '💻', isIncome: true),
];

final List<Category> getCategoriesByTrueTypeNetworkToDomainMock = [
  Category(id: 3, name: 'Зарплата', emoji: '💰', isIncome: true),
  Category(id: 9, name: 'Инвестиции', emoji: '📈', isIncome: true),
  Category(id: 14, name: 'Фриланс', emoji: '💻', isIncome: true),
  Category(id: 18, name: 'Фриланс', emoji: '💻', isIncome: true),
];
