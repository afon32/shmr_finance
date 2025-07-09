import 'package:flutter_bloc/flutter_bloc.dart';

class AccountStateHolder extends Cubit<int> {
  AccountStateHolder() : super(1); // Так как счёт один, то достаточно мока

  void setCurrency(int accountId) {
    final newState = accountId;
    emit(newState);
  }
}
