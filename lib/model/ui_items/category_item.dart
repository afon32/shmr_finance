class CategoryItem {
  final int id;
  final String name;

  CategoryItem({required this.id, required this.name});

  @override
  bool operator ==(Object other) {
    if (other is CategoryItem) {
      return id == other.id;
    }
    return false;
  }
}
