import 'package:flutter/material.dart';
import 'package:shmr_finance/utils/router/app_routes.dart';
import 'package:shmr_finance/utils/strings/s.dart';
import 'package:shmr_finance/utils/themes/app_theme.dart';
import 'package:shmr_finance/utils/themes/color_blend_extension.dart';

class NavBarItem {
  final Widget icon;
  final Widget selectedIcon;
  final String? label;
  final String routeName;

  NavBarItem(
      {required this.icon,
      required this.selectedIcon,
      required this.label,
      required this.routeName});
}

abstract class NavBarItems {
  /// контекст нужен для локализованных строк и цвета
  static List<NavBarItem> items(BuildContext context) {
    final strings = S.of(context);
    final theme = context.theme;
    return [
      NavBarItem(
          icon: _IconContainer(isSelected: false, child: AppIcons.expences.svg),
          selectedIcon: _IconContainer(
            isSelected: true,
            child: AppIcons.expences.svgWithTint(
                theme.mainThemeColor.withMainTintBlend(context, 200)),
          ),
          label: S.of(context).expences,
          routeName: MainRoutes.expences.routeName),
      NavBarItem(
          icon: _IconContainer(isSelected: false, child: AppIcons.income.svg),
          selectedIcon: _IconContainer(
            isSelected: true,
            child: AppIcons.income.svgWithTint(
                theme.mainThemeColor.withMainTintBlend(context, 200)),
          ),
          label: strings.income,
          routeName: MainRoutes.income.routeName),
      NavBarItem(
          icon: _IconContainer(isSelected: false, child: AppIcons.score.svg),
          selectedIcon: _IconContainer(
            isSelected: true,
            child: AppIcons.score.svgWithTint(
                theme.mainThemeColor.withMainTintBlend(context, 200)),
          ),
          label: strings.score,
          routeName: MainRoutes.score.routeName),
      NavBarItem(
          icon: _IconContainer(isSelected: false, child: AppIcons.items.svg),
          selectedIcon: _IconContainer(
            isSelected: true,
            child: AppIcons.items.svgWithTint(
                theme.mainThemeColor.withMainTintBlend(context, 200)),
          ),
          label: strings.costItems,
          routeName: MainRoutes.costItems.routeName),
      NavBarItem(
          icon: _IconContainer(isSelected: false, child: AppIcons.settings.svg),
          selectedIcon: _IconContainer(
            isSelected: true,
            child: AppIcons.settings.svgWithTint(
                theme.mainThemeColor.withMainTintBlend(context, 200)),
          ),
          label: strings.settings,
          routeName: MainRoutes.settings.routeName),
    ];
  }
}

class _IconContainer extends StatelessWidget {
  final Widget child;
  final bool isSelected;
  const _IconContainer(
      {required this.child, required this.isSelected, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: isSelected
              ? context.theme.mainThemeColor.withMainTintBlend(context, 70)
              : null,
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
        child: child,
      ),
    );
  }
}
