import 'package:flutter/material.dart';
import 'package:shmr_finance/utils/themes/app_theme.dart';

class ShmrSearchingItem extends StatelessWidget {
  final String label;
  final Function(String) onChanged;
  const ShmrSearchingItem(
      {super.key, required this.label, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
        color: context.theme.bottomNavBarColor,
        child: SizedBox(
            height: 70,
            child: Column(children: [
              Expanded(
                  child: Align(
                      alignment: Alignment.center,
                      child: TextFormField(
                        style: context.textTheme.bodyMedium,
                        cursorColor: context.textTheme.displayMedium?.color,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          hintText: '    $label',
                          hintStyle: context.textTheme.bodyLarge!.copyWith(color: context.theme.secondaryTextColor),
                          suffixIcon: Icon(
                            Icons.search,
                            color: context.theme.textColor,
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                        onChanged: (value) => onChanged(value),
                      ))),
              Divider(
                height: 1,
                thickness: 1,
                color: context.theme.dividerColor,
              ),
            ])));
  }
}
