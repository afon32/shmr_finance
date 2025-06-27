import 'package:flutter/material.dart';
import 'package:shmr_finance/utils/strings/s.dart';

enum Currency {
  rub,
  usd,
  eur,
  undefined;

  static Currency fromString(String string) {
    switch (string.toUpperCase()) {
      case 'RUB':
        return Currency.rub;
      case 'USD':
        return Currency.usd;
      case 'EUR':
        return Currency.eur;
      default:
        return Currency.undefined;
    }
  }

  static String toName(Currency currency, BuildContext context) {
    switch (currency) {
      case Currency.rub:
        return S.of(context).ruble;
      case Currency.usd:
        return S.of(context).dollar;
      case Currency.eur:
        return S.of(context).euro;
      default:
        return '';
    }
  }
}

extension CurrencyX on Currency {
  String get code {
    switch (this) {
      case Currency.rub:
        return 'RUB';
      case Currency.usd:
        return 'USD';
      case Currency.eur:
        return 'EUR';
      case Currency.undefined:
        return 'UNDEFINED';
    }
  }

  String get sign {
    switch (this) {
      case Currency.rub:
        return '₽';
      case Currency.usd:
        return "\$";
      case Currency.eur:
        return '€';
      case Currency.undefined:
        return '?';
    }
  }

  IconData get iconData {
    switch (this) {
      case Currency.rub:
        return Icons.currency_ruble;
      case Currency.usd:
        return Icons.attach_money;
      case Currency.eur:
        return Icons.euro;
      case Currency.undefined:
        return Icons.question_mark;
    }
  }
}
