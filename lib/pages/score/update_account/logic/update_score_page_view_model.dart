import 'package:shmr_finance/model/common_enums/currency_enum.dart';

class UpdateScorePageViewModel {
  final String emoji;
  final String name;
  final double amount;
  final Currency currency;

  UpdateScorePageViewModel._(
      {required this.emoji,
      required this.name,
      required this.amount,
      required this.currency});

  factory UpdateScorePageViewModel.buildWith(
          String name, double amount, Currency currency) =>
      UpdateScorePageViewModel._(
          emoji: '💰', name: name, amount: amount, currency: currency);
}
