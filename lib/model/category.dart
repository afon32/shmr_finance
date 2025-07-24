/// Вынесена во внешний модуль, т.к. используется в нескольких фичах.
class Category {
  final int id;
  final String name;
  final String emoji;
  final bool isIncome;

  Category({
    required this.id,
    required this.name,
    required this.emoji,
    required this.isIncome,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Category &&
        other.id == id &&
        other.name == name &&
        other.emoji == emoji &&
        other.isIncome == isIncome;
  }

  @override
  int get hashCode =>
      id.hashCode ^ name.hashCode ^ emoji.hashCode ^ isIncome.hashCode;
}

