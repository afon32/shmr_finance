import 'package:shmr_finance/features/transactions/domain/entities/transaction_details.dart';
import 'package:shmr_finance/model/common_enums/currency_enum.dart';
import 'package:shmr_finance/model/ui_items/account_item.dart';
import 'package:shmr_finance/model/ui_items/category_item.dart';

class HistoryTodayViewModel {
  final List<ExpenceItem> items;
  final TotalAmountItem total;

  HistoryTodayViewModel._({required this.items, required this.total});

  factory HistoryTodayViewModel.buildWith(
          List<ExpenceItem> items, TotalAmountItem total) =>
      HistoryTodayViewModel._(items: items, total: total);

  factory HistoryTodayViewModel.fromTransactionDetails(
      List<TransactionDetails> transactionDetails) {
    int amount = 0;
    String? sign;
    final expences = transactionDetails.map((e) {
      amount += e.amount.round();
      sign ??= e.account.currency.sign;
      return ExpenceItem.buildWith(
          e.id,
          e.category.emoji,
          e.category.id,
          e.account.id,
          e.account.name,
          e.category.name,
          e.transactionDate,
          e.comment,
          e.amount,
          e.account.currency.sign);
    }).toList();

    final total = TotalAmountItem.buildWith(amount, sign);

    return HistoryTodayViewModel.buildWith(expences, total);
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
  final AccountItem accountItem;
  final CategoryItem categoryItem;
  final DateTime date;
  final String? subtitle;
  final double summ;
  final String moneySign;

  ExpenceItem._(
      {required this.id,
      required this.emoji,
      required this.accountItem,
      required this.categoryItem,
      required this.date,
      required this.subtitle,
      required this.summ,
      required this.moneySign});

  factory ExpenceItem.buildWith(
          int id,
          String emoji,
          int categoryId,
          int accountId,
          String accountName,
          String categoryName,
          DateTime date,
          String? subtitle,
          double summ,
          String moneySign) =>
      ExpenceItem._(
          id: id,
          emoji: emoji,
          accountItem: AccountItem(id: accountId, name: accountName),
          categoryItem: CategoryItem(id: categoryId, name: categoryName),
          date: date,
          subtitle: subtitle,
          summ: summ,
          moneySign: moneySign);
}
