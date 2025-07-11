import 'package:flutter_bloc/flutter_bloc.dart';

class LocalTransactionIdHolder extends Cubit<int> {
  LocalTransactionIdHolder()
      : super(0); // Так как счёт один, то достаточно мока

  int newT() {
    final oldState = state;
    final newState = oldState + 1;
    emit(newState);
    return oldState;
  }

  void restore(int transaction) {
    final newState = transaction;
    emit(newState);
  }
}
