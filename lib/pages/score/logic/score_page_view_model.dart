import 'package:shmr_finance/features/account/domain/entities/account.dart';
import 'package:shmr_finance/model/common_enums/currency_enum.dart';

class ScorePageViewModel {
  final List<AccountItem> items;

  ScorePageViewModel._({required this.items});

  factory ScorePageViewModel.buildWith(List<AccountItem> items) =>
      ScorePageViewModel._(items: items);

  factory ScorePageViewModel.fromAccountsList(List<Account> accounts) {
    final accountItems = accounts.map((e) {
      return AccountItem.buildWith(
          e.id, e.name, e.balance.round(), e.currency.sign);
    }).toList();

    return ScorePageViewModel._(items: accountItems);
  }
}

class AccountItem {
  final int id;
  final String emoji;
  final String name;
  final int amount;
  final String currencySign;

  AccountItem._(
      {required this.id,
      required this.emoji,
      required this.name,
      required this.amount,
      required this.currencySign});

  factory AccountItem.buildWith(
          int id, String name, int amount, String currencySign) =>
      AccountItem._(
          id: id,
          emoji: '💰',
          name: name,
          amount: amount,
          currencySign: currencySign);
}
