import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_cubit_state.freezed.dart';

@freezed
class SettingsCubitState with _$SettingsCubitState{
  final bool isSystemTheme;
  final Color mainColor;
  final bool hapticksOn;
  final bool isEnglish;
  final String? pinCode;
  final bool biometryOn;

  SettingsCubitState({
    required this.isSystemTheme,
    required this.mainColor,
    required this.hapticksOn,
    required this.isEnglish,
    required this.pinCode,
    required this.biometryOn,
  });
}
