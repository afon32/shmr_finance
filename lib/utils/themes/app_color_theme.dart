part of 'app_theme.dart';

extension AppColorTheme on ThemeExtension<ColorTheme> {
  static ColorTheme? _darkTheme;
  static ColorTheme get dark => _darkTheme ??= const ColorTheme(
        backgroundColor: Color(0xFF0F0F0F),
        containerColor: Color(0xFF1B1B1B),
        foregroundColor: Color(0xFF2C2C2D),
        dividerColor: Color.fromARGB(255, 202, 196, 208),
        iconColor: Color(0xFFF4F4F4),
        textColor: Color(0xFFF4F4F4),
        secondaryTextColor: Color(0x99DFDFDF),
        disabled: Color(0xFF494949),
        mainLogoColor: Color.fromARGB(255, 200, 168, 94),
        appBarColor: Color.fromARGB(255, 42, 232, 129),
        bottomNavBarColor: Color.fromARGB(255, 12, 18, 10),
        selectionItemsColor: Color.fromARGB(255, 212, 250, 230),
        textContainerColor: Color.fromARGB(255, 68, 235, 144),
        rejectButtonColor: Color.fromARGB(255, 228, 105, 98),
        commonListItemColor: Color.fromARGB(255, 254, 247, 255),
      );

  static ColorTheme? _lightTheme;
  static ColorTheme get light => _lightTheme ??= const ColorTheme(
        backgroundColor: Color(0xFFFCFCFC),
        containerColor: Color(0xFFF3F3F3),
        foregroundColor: Color(0xFFECECEC),
        dividerColor: Color.fromARGB(255, 202, 196, 208),
        iconColor: Color(0xFF171717),
        textColor: Color(0xFF171717),
        secondaryTextColor: Color(0x993A3A3A),
        disabled: Color(0xFFECECEC),
        mainLogoColor: Color.fromARGB(255, 55, 87, 161),
        appBarColor: Color.fromARGB(255, 42, 232, 129),
        bottomNavBarColor: Color.fromARGB(255,243, 237, 247),
        selectionItemsColor: Color.fromARGB(255, 212, 250, 230),
        textContainerColor: Color.fromARGB(255, 68, 235, 144),
        rejectButtonColor: Color.fromARGB(255, 228, 105, 98),
        commonListItemColor: Color.fromARGB(255, 254, 247, 255),
      );
}
