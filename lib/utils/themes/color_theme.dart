part of 'app_theme.dart';

class ColorTheme extends ThemeExtension<ColorTheme> {
  const ColorTheme({
    required this.backgroundColor,
    required this.containerColor,
    required this.foregroundColor,
    required this.dividerColor,
    required this.iconColor,
    required this.textColor,
    required this.secondaryTextColor,
    required this.disabled,
    required this.mainLogoColor,
    required this.appBarColor,
    required this.bottomNavBarColor,
    required this.rejectButtonColor,
    required this.textContainerColor,
    required this.selectionItemsColor,
    this.green = const Color(0xFF6BBE1A),
    this.red = const Color(0xFFF21F1F),
    this.accentColor = const Color(0xFF0084FF),
    this.whiteText = const Color(0xFFF4F4F4),
  });

  final Color mainLogoColor;

  /// The most accented button, card, container
  final Color accentColor;

  /// Text color for colorful widgets
  final Color whiteText;

  /// Scaffold background
  final Color backgroundColor;

  /// Surfaces, containers background
  final Color containerColor;

  /// Buttons and dialogs background
  final Color foregroundColor;

  /// Divider, drag handle color
  final Color dividerColor;

  /// Icon color
  final Color iconColor;

  /// Main text color
  final Color textColor;

  /// Descriptions, labels and other secondary text
  final Color secondaryTextColor;

  /// Green color
  final Color green;

  /// Green color
  final Color red;

  /// Disabled color
  final Color disabled;

  /// AppBar color
  final Color appBarColor;

  /// AppBar color
  final Color bottomNavBarColor;

  /// Reject button color
  final Color rejectButtonColor;

  /// Text container color
  final Color textContainerColor;

  /// Selection items color
  final Color selectionItemsColor;

  @override
  ThemeExtension<ColorTheme> copyWith({
    Color? accentColor,
    Color? whiteText,
    Color? backgroundColor,
    Color? containerColor,
    Color? foregroundColor,
    Color? dividerColor,
    Color? iconColor,
    Color? textColor,
    Color? secondaryTextColor,
    Color? appBarColor,
    Color? bottomNavBarColor,
    Color? rejectButtonColor,
    Color? textContainerColor,
    Color? selectionItemsColor,
    Color? green,
    Color? red,
    Color? disabled,
  }) =>
      ColorTheme(
        accentColor: accentColor ?? this.accentColor,
        whiteText: whiteText ?? this.whiteText,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        containerColor: containerColor ?? this.containerColor,
        foregroundColor: foregroundColor ?? this.foregroundColor,
        dividerColor: dividerColor ?? this.dividerColor,
        iconColor: iconColor ?? this.iconColor,
        textColor: textColor ?? this.textColor,
        secondaryTextColor: secondaryTextColor ?? this.secondaryTextColor,
        appBarColor: appBarColor ?? this.appBarColor,
        bottomNavBarColor: bottomNavBarColor ?? this.bottomNavBarColor,
        rejectButtonColor: rejectButtonColor ?? this.rejectButtonColor,
        textContainerColor: textContainerColor ?? this.textContainerColor,
        selectionItemsColor: selectionItemsColor ?? this.selectionItemsColor,
        green: green ?? this.green,
        red: red ?? this.red,
        disabled: disabled ?? this.disabled,
        mainLogoColor: mainLogoColor ?? this.mainLogoColor,
      );

  @override
  ThemeExtension<ColorTheme> lerp(
      covariant ThemeExtension<ColorTheme>? other, double t) {
    if (other is! ColorTheme) return this;
    return ColorTheme(
        accentColor: Color.lerp(accentColor, other.accentColor, t)!,
        whiteText: Color.lerp(whiteText, other.whiteText, t)!,
        backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
        containerColor: Color.lerp(containerColor, other.containerColor, t)!,
        foregroundColor: Color.lerp(foregroundColor, other.foregroundColor, t)!,
        dividerColor: Color.lerp(dividerColor, other.dividerColor, t)!,
        iconColor: Color.lerp(iconColor, other.iconColor, t)!,
        textColor: Color.lerp(textColor, other.textColor, t)!,
        secondaryTextColor:
            Color.lerp(secondaryTextColor, other.secondaryTextColor, t)!,
        appBarColor: Color.lerp(appBarColor, other.appBarColor, t)!,
        bottomNavBarColor: Color.lerp(bottomNavBarColor, other.bottomNavBarColor, t)!,
        rejectButtonColor:
            Color.lerp(rejectButtonColor, other.rejectButtonColor, t)!,
        textContainerColor:
            Color.lerp(textContainerColor, other.textContainerColor, t)!,
        selectionItemsColor:
            Color.lerp(selectionItemsColor, other.selectionItemsColor, t)!,
        green: Color.lerp(green, other.green, t)!,
        red: Color.lerp(red, other.red, t)!,
        disabled: Color.lerp(disabled, other.disabled, t)!,
        mainLogoColor: Color.lerp(mainLogoColor, other.mainLogoColor, t)!);
  }
}
