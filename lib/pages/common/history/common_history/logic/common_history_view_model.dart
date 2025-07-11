import 'package:shmr_finance/features/transactions/domain/entities/transaction_details.dart';
import 'package:shmr_finance/model/common_enums/currency_enum.dart';
import 'package:shmr_finance/model/ui_items/account_item.dart';
import 'package:shmr_finance/model/ui_items/category_item.dart';
import 'package:shmr_finance/pages/common/history/types/sort_type.dart';

class CommonHistoryViewModel {
  final List<ExpenceItem> items;
  final TotalAmountItem total;

  CommonHistoryViewModel._({required this.items, required this.total});

  factory CommonHistoryViewModel.buildWith(
          List<ExpenceItem> items, TotalAmountItem total) =>
      CommonHistoryViewModel._(items: items, total: total);

  factory CommonHistoryViewModel.fromTransactionDetails(
      List<TransactionDetails> transactionDetails) {
    int amount = 0;
    String? sign;
    final expences = transactionDetails.map((e) {
      amount += e.amount.round();
      sign ??= e.account?.currency.sign;
      return ExpenceItem.buildWith(
          e.id,
          e.category?.emoji,
          e.category?.id,
          e.account?.id,
          e.account?.name,
          e.category?.name,
          e.transactionDate,
          e.comment,
          e.amount,
          e.account?.currency.sign);
    }).toList();

    final total = TotalAmountItem.buildWith(amount, sign);

    return CommonHistoryViewModel.buildWith(expences, total);
  }

  factory CommonHistoryViewModel.sort(args) {
    final totalAmount = args['total'] as TotalAmountItem;
    final sortItems = args['items'] as List<ExpenceItem>;
    final type = args['type'] as SortType;
    switch (type) {
      case SortType.dateDecrease:
        sortItems.sort((a, b) => b.datetime.compareTo(a.datetime));
      case SortType.dateIncrease:
        sortItems.sort((a, b) => a.datetime.compareTo(b.datetime));
      case SortType.amountDecrease:
        sortItems.sort((a, b) => b.summ.compareTo(a.summ));
      case SortType.amountIncrease:
        sortItems.sort((a, b) => a.summ.compareTo(b.summ));
      case SortType.none: // do nothing
    }

    return CommonHistoryViewModel.buildWith(sortItems, totalAmount);
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

class ExpenceItem {
  final int id;
  final String? emoji;
  final AccountItem? accountItem;
  final CategoryItem? categoryItem;
  final DateTime datetime;
  final String? subtitle;
  final double summ;
  final String? moneySign;

  ExpenceItem._(
      {required this.id,
      required this.emoji,
      required this.accountItem,
      required this.categoryItem,
      required this.datetime,
      required this.subtitle,
      required this.summ,
      required this.moneySign});

  factory ExpenceItem.buildWith(
          int id,
          String? emoji,
          int? categoryId,
          int? accountId,
          String? accountName,
          String? categoryName,
          DateTime date,
          String? subtitle,
          double summ,
          String? moneySign) =>
      ExpenceItem._(
          id: id,
          emoji: emoji,
          accountItem: (accountId != null && accountName != null)
              ? AccountItem(id: accountId, name: accountName)
              : null,
          categoryItem: (categoryId != null && categoryName != null)
              ? CategoryItem(id: categoryId, name: categoryName)
              : null,
          datetime: date,
          subtitle: subtitle,
          summ: summ,
          moneySign: moneySign);
}
