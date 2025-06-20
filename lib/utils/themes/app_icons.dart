part of 'app_theme.dart';

enum AppIcons {
  income._('uptrend-7.svg'),
  expences._('downtrend-7.svg'),
  score._('calculator-7.svg'),
  items._('bar-chart-side-7.svg'),
  settings._('settings-7.svg'),
  analyze._('analyze_history_7')
  ;

  const AppIcons._(this._asset);

  final String _asset;

  Widget get png => Image.asset(_path);

  Widget get svg => SvgPicture.asset(_path);

  Widget svgWithTint(Color? color) => switch (color) {
        null => svg,
        _ => SvgPicture.asset(
            _path,
            colorFilter: ColorFilter.mode(
              color,
              BlendMode.srcIn,
            ),
          ),
      };

  String get _path => '$_basePath$_asset';

  static const _basePath = 'assets/icons/';
}

extension IconSize on Widget {
  Widget withSize(double? width, double? height) {
    final padding = Size((width ?? 24.0) / 12.0, (height ?? 24.0) / 12.0);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: padding.width,
        vertical: padding.height,
      ),
      child: SizedBox(
        width: (width ?? 24.0) - padding.width * 2,
        height: (height ?? 24.0) - padding.height * 2,
        child: this,
      ),
    );
  }
}
