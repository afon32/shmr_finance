import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shmr_finance/core/local_holders/haptick_permission_holder.dart';
import 'package:shmr_finance/core/local_holders/main_color_holder.dart';
import 'package:shmr_finance/core/local_holders/secure_data_holder.dart';
import 'package:shmr_finance/utils/strings/strings_provider.dart';
import 'package:shmr_finance/utils/themes/app_theme.dart';

import 'settings_cubit_state.dart';

class SettingsCubit extends Cubit<SettingsCubitState> {
  final ThemeProvider themeProvider;
  final MainColorHolder mainColorHolder;
  final HaptickPermissionHolder hapticksIsOn;
  final StringsProvider stringsProvider;
  final SecureDataHolder secureDataHolder;
  SettingsCubit({
    required this.themeProvider,
    required this.mainColorHolder,
    required this.hapticksIsOn,
    required this.stringsProvider,
    required this.secureDataHolder,
  }) : super(
          SettingsCubitState(
            isSystemTheme: !themeProvider.isLight,
            mainColor: mainColorHolder.state,
            hapticksOn: hapticksIsOn.state,
            isEnglish: stringsProvider.isEn,
            pinCode: secureDataHolder.state.pin,
            biometryOn: secureDataHolder.state.bioIsOn,
          ),
        );

  void setSystemTheme() {
    themeProvider.setSystemTheme();
    final newState = state.copyWith(isSystemTheme: true);
    emit(newState);
  }

  void setLightTheme() {
    themeProvider.setLightTheme();
    final newState = state.copyWith(isSystemTheme: false);
    emit(newState);
  }

  void setMainColor(Color color) {
    mainColorHolder.setColor(color.value);
    final newState = state.copyWith(mainColor: color);
    emit(newState);
  }

  void setHapticksPermissionIsOn() {
    hapticksIsOn.setValue(true);
    final newState = state.copyWith(hapticksOn: true);
    emit(newState);
  }

  void setHapticksPermissionIsOff() {
    hapticksIsOn.setValue(false);
    final newState = state.copyWith(hapticksOn: false);
    emit(newState);
  }

  void toggleLang() {
    stringsProvider.toggleLang();
    final newState = state.copyWith(isEnglish: stringsProvider.isEn);
    emit(newState);
  }

  void setBioIsOn() {
    secureDataHolder.setBio(true);
    final newState = state.copyWith(biometryOn: true);
    emit(newState);
  }

  void setBioIsOff() {
    secureDataHolder.setBio(false);
    final newState = state.copyWith(biometryOn: false);
    emit(newState);
  }

  void setPinCode(String pin) {
    secureDataHolder.setPin(pin);
    final newState = state.copyWith(pinCode: pin);
    emit(newState);
  }
}
