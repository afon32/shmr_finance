import 'package:flutter/material.dart';
import 'package:sembast/sembast_io.dart';

import '../abstract/a_dao.dart';
import 'app_customization_dto.dart';

class AppCustomizationDao extends ADao<AppCustomizationDto> {
  AppCustomizationDao(DatabaseClient dbClient) : super(dbClient);

  @override
  AppCustomizationDto fromJson(Map<String, Object?> json) =>
      AppCustomizationDto.fromJson(json);

  @override
  String primaryKeyOf(AppCustomizationDto entity) => entity.userId.toString();

  @override
  String get storeName => 'shmr_app_customization_settings_store';

  @override
  Map<String, Object?> toJson(AppCustomizationDto data) => data.toJson();

  Future<AppCustomizationDto> _get({required int userId}) async =>
      (await getByKey(key: userId.toString())) ??
      AppCustomizationDto(userId: userId);

  Future<void> setTheme(ThemeMode theme, int userId) async {
    final currentAppData = await _get(userId: userId);
    final newAppData =
        currentAppData.copyWith(isLightTheme: theme == ThemeMode.light);
    await put(newAppData);
  }

  Future<bool> getTheme(int userId) async {
    final currentAppData = await _get(userId: userId);
    return currentAppData.isLightTheme;
  }

  Future<void> setLocale(Locale locale, int userId) async {
    final currentAppData = await _get(userId: userId);
    final newAppData = currentAppData.copyWith(locale: locale.languageCode);
    await put(newAppData);
  }

  Future<String> getLocalCode(int userId) async {
    final currentAppData = await _get(userId: userId);
    return currentAppData.locale;
  }

  Future<void> setTint(int tintColor, int userId) async {
    final currentAppData = await _get(userId: userId);
    final newAppData = currentAppData.copyWith(tintColor: tintColor);
    await put(newAppData);
  }

  Future<int> getTint(int userId) async {
    final currentAppData = await _get(userId: userId);
    return currentAppData.tintColor;
  }

  Future<void> setHapticks(bool isOn, int userId) async {
    final currentAppData = await _get(userId: userId);
    final newAppData = currentAppData.copyWith(hapticksIsOn: isOn);
    await put(newAppData);
  }

  Future<bool> getHapticks(int userId) async {
    final currentAppData = await _get(userId: userId);
    return currentAppData.hapticksIsOn;
  }
}
