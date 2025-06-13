import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_color_theme.dart';
part 'color_theme.dart';
part 'theme_provider.dart';
part 'app_icons.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData.light(
        useMaterial3: true,
      ).copyWith(
        actionIconTheme: _actionIconTheme,
        textTheme: _lightTextTheme,
        extensions: <ThemeExtension<ColorTheme>>[
          AppColorTheme.light,
        ],
      );

  static ThemeData get darkTheme => ThemeData.dark(
        useMaterial3: true,
      ).copyWith(
        actionIconTheme: _actionIconTheme,
        textTheme: _darkTextTheme,
        extensions: <ThemeExtension<dynamic>>[
          AppColorTheme.dark,
        ],
      );

  static final TextTheme _lightTextTheme = Typography.englishLike2021.merge(Typography.blackHelsinki);
  static final TextTheme _darkTextTheme = Typography.englishLike2021.merge(Typography.whiteHelsinki);

  static final _actionIconTheme = const ActionIconThemeData().copyWith(
    backButtonIconBuilder: (context) => IconButton(
      iconSize: 24,
      onPressed: context.pop,
      icon: const Icon(Icons.chevron_left),
    ),
  );
}

extension ShmrTheme on BuildContext {
  ColorTheme get theme => Theme.of(this).extension<ColorTheme>()!;
  TextTheme get textTheme => Theme.of(this).textTheme;
}
