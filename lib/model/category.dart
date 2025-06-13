/// Вынесена во внешний модуль, т.к. используется в нескольких фичах.
class Category {
  final int id;
  final String name;
  final String emoji;
  final bool isIncome;

  Category(
      {required this.id,
      required this.name,
      required this.emoji,
      required this.isIncome});
}
