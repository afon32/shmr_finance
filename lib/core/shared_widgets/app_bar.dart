import 'package:flutter/material.dart';
import 'package:shmr_finance/utils/themes/app_theme.dart';
import 'package:shmr_finance/utils/themes/text_theme_extension.dart';

class ShmrAppBar extends StatelessWidget {
  final Widget child;
  final String title;
  final IconData? buttonIcon;
  final VoidCallback? onTap;
  const ShmrAppBar(
      {required this.child,
      required this.title,
      this.buttonIcon,
      this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          title,
          style: context.textTheme.appBarTitle,
        ),
        actions: [IconButton(onPressed: onTap, icon: Icon(buttonIcon))],
        backgroundColor: context.theme.appBarColor,
      ),
      body: child,
    );
  }
}
