import 'package:flutter_bloc/flutter_bloc.dart';

import 'models/secure/secure_data.dart';

class SecureDataHolder extends Cubit<SecureData> {
  SecureDataHolder() : super(SecureData.initial());

  void setPin(String pin) {
    final newState = state.copyWith(pin: pin);
    emit(newState);
  }

  void setBio(bool isOn) {
    final newState = state.copyWith(bioIsOn: isOn);
    emit(newState);
  }

  bool validate(String pin) {
    if (pin == state.pin) {
      return true;
    } else {
      return false;
    }
  }
}
