import 'package:flutter_bloc/flutter_bloc.dart';

class ColdBootStateHolder extends Cubit<bool> {
  ColdBootStateHolder() : super(false);

  void setNot() {
    final newState = false;
    emit(newState);
  }
}
