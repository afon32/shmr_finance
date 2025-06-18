import 'package:shmr_finance/features/transactions/domain/entities/transaction_details.dart';
import 'package:shmr_finance/model/common_enums/currency_enum.dart';
import 'package:shmr_finance/pages/history/types/sort_type.dart';


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
      sign ??= e.account.currency.sign;
      return ExpenceItem.buildWith(
          e.id,
          e.category.emoji,
          e.category.name,
          e.comment,
          e.amount.round(),
          e.account.currency.sign,
          e.transactionDate);
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
  final String emoji;
  final String categoryName;
  final String? subtitle;
  final int summ;
  final String moneySign;
  final DateTime datetime;

  ExpenceItem._(
      {required this.id,
      required this.emoji,
      required this.categoryName,
      required this.subtitle,
      required this.summ,
      required this.moneySign,
      required this.datetime});

  factory ExpenceItem.buildWith(int id, String emoji, String categoryName,
          String? subtitle, int summ, String moneySign, DateTime datetime) =>
      ExpenceItem._(
          id: id,
          emoji: emoji,
          categoryName: categoryName,
          subtitle: subtitle,
          summ: summ,
          moneySign: moneySign,
          datetime: datetime);
}
