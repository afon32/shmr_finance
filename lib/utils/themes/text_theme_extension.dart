import 'package:flutter/material.dart';

extension TextThemeX on TextTheme {
  TextStyle get bodySmallBold =>
      bodySmall?.copyWith(fontWeight: FontWeight.bold) ??
      const TextStyle(fontWeight: FontWeight.bold);
  TextStyle get labelSmallBold =>
      labelSmall?.copyWith(fontWeight: FontWeight.w900) ??
      const TextStyle(fontWeight: FontWeight.w900);
  TextStyle get appBarTitle =>
      headlineSmall?.copyWith(fontWeight: FontWeight.w400, fontSize: 24) ??
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 24);
}
