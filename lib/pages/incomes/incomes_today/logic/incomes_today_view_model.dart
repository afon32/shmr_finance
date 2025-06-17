import 'package:shmr_finance/features/transactions/domain/entities/transaction_details.dart';
import 'package:shmr_finance/model/common_enums/currency_enum.dart';

class IncomesTodayViewModel {
  final List<ExpenceItem> items;
  final TotalAmountItem total;

  IncomesTodayViewModel._({required this.items, required this.total});

  factory IncomesTodayViewModel.buildWith(
          List<ExpenceItem> items, TotalAmountItem total) =>
      IncomesTodayViewModel._(items: items, total: total);

  factory IncomesTodayViewModel.fromTransactionDetails(
      List<TransactionDetails> transactionDetails) {
    int amount = 0;
    String? sign;
    final expences = transactionDetails.map((e) {
      amount += e.amount.round();
      sign ??= e.account.currency.sign;
      return ExpenceItem.buildWith(e.id, e.category.emoji, e.category.name,
          e.comment, e.amount.round(), e.account.currency.sign);
    }).toList();

    final total = TotalAmountItem.buildWith(amount, sign);

    return IncomesTodayViewModel.buildWith(expences, total);
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

  ExpenceItem._(
      {required this.id,
      required this.emoji,
      required this.categoryName,
      required this.subtitle,
      required this.summ,
      required this.moneySign});

  factory ExpenceItem.buildWith(int id, String emoji, String categoryName,
          String? subtitle, int summ, String moneySign) =>
      ExpenceItem._(
          id: id,
          emoji: emoji,
          categoryName: categoryName,
          subtitle: subtitle,
          summ: summ,
          moneySign: moneySign);
}
