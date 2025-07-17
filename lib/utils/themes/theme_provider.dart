part of 'app_theme.dart';

class ThemeProvider extends Cubit<ThemeMode> {
  ThemeProvider() : super(ThemeMode.light);

  ThemeMode _activeMode = ThemeMode.light;

  ThemeMode get activeMode => _activeMode;

  bool get isLight => activeMode == ThemeMode.light;

  void toggleTheme() {
    _activeMode = switch (_activeMode) {
      ThemeMode.system => ThemeMode.light,
      _ => ThemeMode.system,
    };
    emit(_activeMode);
  }

  void setSystemTheme() {
    emit(ThemeMode.system);
  }

  void setLightTheme() {
    emit(ThemeMode.light);
  }
}
