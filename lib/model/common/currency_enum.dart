enum Currency {
  rub,
  usd,
  eur,
  undefined;

  Currency currencyFromString(String string) => switch (string) {
        'RUB' => Currency.rub,
        'USD' => Currency.usd,
        'EUR' => Currency.eur,
        _ => Currency.undefined
      };
}