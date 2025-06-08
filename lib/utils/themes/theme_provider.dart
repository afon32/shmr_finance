part of 'app_theme.dart';

class ThemeProvider extends Cubit<ThemeMode> {
  ThemeProvider() : super(ThemeMode.light);

  ThemeMode _activeMode = ThemeMode.light;

  ThemeMode get activeMode => _activeMode;

  void toggleTheme() {
    _activeMode = switch (_activeMode) {
      ThemeMode.dark => ThemeMode.light,
      _ => ThemeMode.dark,
    };
    emit(_activeMode);
  }
}
