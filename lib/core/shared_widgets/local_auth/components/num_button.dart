import 'package:flutter/material.dart';
import 'package:shmr_finance/utils/themes/app_theme.dart';
import 'package:shmr_finance/utils/themes/color_blend_extension.dart';

class NumButton extends StatelessWidget {
  final String value;
  final Function(String) onTap;
  const NumButton({
    super.key,
    required this.value,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: SizedBox(
        height: 50,
        width: 50,
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:
                  context.theme.mainThemeColor.withMainTintBlend(context, 120)),
          child: Center(
            child: Text(
              value,
              style: context.textTheme.titleLarge,
            ),
          ),
        ),
      ),
      onTap: () => onTap(value),
    );
  }
}
