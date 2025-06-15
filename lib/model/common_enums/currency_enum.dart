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
        return 'R';
      case Currency.usd:
        return "U";
      case Currency.eur:
        return 'E';
      case Currency.undefined:
        return '?';
    }
  }
}
