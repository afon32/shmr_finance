import 'sort_type.dart';

enum HistoryPageType { expences, incomes }

extension HistoryPageTypeX on HistoryPageType {
  List<SortType> get sortTypes => switch (this) {
        HistoryPageType.expences => [
            SortType.amountIncrease,
            SortType.amountDecrease,
            SortType.dateIncrease,
            SortType.dateDecrease
          ],
        HistoryPageType.incomes => [
            SortType.amountIncrease,
            SortType.amountDecrease,
            SortType.dateIncrease,
            SortType.dateDecrease
          ],
      };
}
