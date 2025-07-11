import 'package:flutter_bloc/flutter_bloc.dart';

class ColdBootStateHolder extends Cubit<bool> {
  ColdBootStateHolder() : super(false);

  void setCurrency(bool isColdBoot) {
    final newState = isColdBoot;
    emit(newState);
  }
}
