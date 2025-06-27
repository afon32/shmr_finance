part of 'categories_page_cubit.dart';

class CategoriesPageViewModel {
  final List<CategoryItem> items;

  CategoriesPageViewModel._({required this.items});

  factory CategoriesPageViewModel.buildWith(List<CategoryItem> items) =>
      CategoriesPageViewModel._(items: items);
}

class CategoryItem {
  final int id;
  final String name;
  final String emoji;

  CategoryItem._({required this.id, required this.name, required this.emoji});

  factory CategoryItem.buildWith(int id, String name, String emoji) =>
      CategoryItem._(id: id, name: name, emoji: emoji);
}
