import 'package:shmr_finance/features/transactions/domain/entities/transaction_details.dart';
import 'package:shmr_finance/model/common_enums/currency_enum.dart';
import 'package:shmr_finance/pages/common/history/types/sort_type.dart';
import 'package:collection/collection.dart';

class AnalyzeViewModel {
  final List<ExpenceCategoryItem> items;
  final TotalAmountItem total;

  AnalyzeViewModel._({required this.items, required this.total});

  factory AnalyzeViewModel.buildWith(
          List<ExpenceCategoryItem> items, TotalAmountItem total) =>
      AnalyzeViewModel._(items: items, total: total);

  factory AnalyzeViewModel.fromTransactionDetails(
      List<TransactionDetails> transactionDetails) {
    final grouped = groupBy(transactionDetails, (e) => e.category?.id ?? -1);
    int totalAmount = 0;
    String? sign;
    for (List<TransactionDetails> details in grouped.values) {
      for (TransactionDetails detail in details) {
        totalAmount += detail.amount.round();
      }
    }
    final categoriesExpencesList = grouped.entries.map((entry) {
      int categoryAmount = 0;
      String? categoryName;
      String? emoji;
      String? moneySign;
      final categoriesExpences = entry.value.map((e) {
        categoryAmount += e.amount.round();
        moneySign ??= e.account?.currency.sign;
        categoryName ??= e.category?.name;
        emoji ??= e.category?.emoji;
        moneySign ??= e.account?.currency.sign;
        sign ??= e.account?.currency.sign;
        return ExpenceItem.buildWith(
            e.id,
            e.category?.emoji,
            e.category?.name,
            e.comment,
            e.amount.round(),
            e.account?.currency.sign,
            e.transactionDate);
      }).toList();

      categoriesExpences.sort((a, b) => b.datetime.compareTo(a.datetime));

      final categoryItem = ExpenceCategoryItem._(
          id: entry.key,
          emoji: emoji ?? '',
          categoryName: categoryName ?? '',
          lastTransactionSubtitle: categoriesExpences.first.subtitle,
          percentsFromAll: ((categoryAmount / totalAmount) * 100).round(),
          summ: categoryAmount,
          moneySign: moneySign ?? '',
          expenceItems: categoriesExpences);

      return categoryItem;
    }).toList();

    final total = TotalAmountItem.buildWith(totalAmount, sign);

    return AnalyzeViewModel.buildWith(categoriesExpencesList, total);
  }
}

class TotalAmountItem {
  final int totalAmount;
  final String currencySign;

  TotalAmountItem._({required this.totalAmount, required this.currencySign});

  factory TotalAmountItem.buildWith(int totalAmount, String? currencySign) =>
      TotalAmountItem._(
          totalAmount: totalAmount, currencySign: currencySign ?? '');
}

class ExpenceCategoryItem {
  final int id;
  final String emoji;
  final String categoryName;
  final String? lastTransactionSubtitle;
  final int percentsFromAll;
  final int summ;
  final String moneySign;
  final List<ExpenceItem> expenceItems;

  ExpenceCategoryItem._(
      {required this.id,
      required this.emoji,
      required this.categoryName,
      required this.lastTransactionSubtitle,
      required this.percentsFromAll,
      required this.summ,
      required this.moneySign,
      required this.expenceItems});

  factory ExpenceCategoryItem.buildWith(
          int id,
          String emoji,
          String categoryName,
          String? lastTransactionSubtitle,
          int percentsFromAll,
          int summ,
          String moneySign,
          List<ExpenceItem> expenceItems) =>
      ExpenceCategoryItem._(
          id: id,
          emoji: emoji,
          categoryName: categoryName,
          lastTransactionSubtitle: lastTransactionSubtitle,
          percentsFromAll: percentsFromAll,
          summ: summ,
          moneySign: moneySign,
          expenceItems: expenceItems);
}

class ExpenceItem {
  final int id;
  final String? emoji;
  final String? categoryName;
  final String? subtitle;
  final int summ;
  final String? moneySign;
  final DateTime datetime;

  ExpenceItem._(
      {required this.id,
      required this.emoji,
      required this.categoryName,
      required this.subtitle,
      required this.summ,
      required this.moneySign,
      required this.datetime});

  factory ExpenceItem.buildWith(
    int id,
    String? emoji,
    String? categoryName,
    String? subtitle,
    int summ,
    String? moneySign,
    DateTime datetime,
  ) =>
      ExpenceItem._(
          id: id,
          emoji: emoji,
          categoryName: categoryName,
          subtitle: subtitle,
          summ: summ,
          moneySign: moneySign,
          datetime: datetime);
}
