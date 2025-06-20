enum SortType {
  amountIncrease,
  amountDecrease,
  dateIncrease,
  dateDecrease,
  none
}

extension SortTypeX on SortType {
  String get label => switch (this) {
        SortType.amountIncrease => 'Сумма ↓',
        SortType.amountDecrease => 'Сумма ↑',
        SortType.dateIncrease => 'Дата ↓',
        SortType.dateDecrease => 'Дата ↑',
        SortType.none => 'По умолчанию',
      };
}
