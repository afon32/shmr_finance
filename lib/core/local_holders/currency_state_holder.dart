import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shmr_finance/model/common_enums/currency_enum.dart';

class CurrencyStateHolder extends Cubit<Currency> {
  CurrencyStateHolder() : super(Currency.eur);

  void setCurrency(Currency currency) {
    final newState = currency;
    emit(newState);
  }
}
