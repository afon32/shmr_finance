import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shmr_finance/utils/strings/s.dart';

class StringsProvider extends Cubit<S> {
  StringsProvider() : super(S(Locale('ru')));

  S _activeLocale = S(Locale('ru'));

  S get activeLocale => _activeLocale;

  void toggleLang() {
    _activeLocale == S(Locale('ru'))
        ? _activeLocale = S(Locale('en'))
        : _activeLocale = S(Locale('ru'));
    emit(_activeLocale);
  }
}
