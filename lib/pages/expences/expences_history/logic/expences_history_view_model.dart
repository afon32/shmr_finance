import 'package:shmr_finance/features/transactions/domain/entities/transaction_details.dart';
import 'package:shmr_finance/model/common_enums/currency_enum.dart';

import 'expences_sort_type.dart';

class ExpencesHistoryViewModel {
  final List<ExpenceItem> items;
  final TotalAmountItem total;

  ExpencesHistoryViewModel._({required this.items, required this.total});

  factory ExpencesHistoryViewModel.buildWith(
          List<ExpenceItem> items, TotalAmountItem total) =>
      ExpencesHistoryViewModel._(items: items, total: total);

  factory ExpencesHistoryViewModel.fromTransactionDetails(
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

    return ExpencesHistoryViewModel.buildWith(expences, total);
  }

  factory ExpencesHistoryViewModel.sort(args) {
    final totalAmount = args['total'] as TotalAmountItem;
    final sortItems = args['items'] as List<ExpenceItem>;
    final type = args['type'] as ExpencesSortType;
    switch (type) {
      case ExpencesSortType.dateDecrease:
        sortItems.sort((a, b) => b.datetime.compareTo(a.datetime));
      case ExpencesSortType.dateIncrease:
        sortItems.sort((a, b) => a.datetime.compareTo(b.datetime));
      case ExpencesSortType.amountDecrease:
        sortItems.sort((a, b) => b.summ.compareTo(a.summ));
      case ExpencesSortType.amountIncrease:
        sortItems.sort((a, b) => a.summ.compareTo(b.summ));
      case _: // do nothing
    }

    return ExpencesHistoryViewModel.buildWith(sortItems, totalAmount);
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
