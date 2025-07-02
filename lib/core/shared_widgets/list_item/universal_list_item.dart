import 'package:flutter/material.dart';
import 'package:shmr_finance/utils/themes/app_theme.dart';

class ShmrUniversalListItem extends StatelessWidget {
  final String? leadingEmoji;
  final String leftTitle;
  final bool leftTitleIsSecondaryStyle;
  final String? leftSubtitle;
  final String? rigthTitle;
  final String? rightSubtitle;
  final bool isChevroned;
  final VoidCallback? onTap;
  const ShmrUniversalListItem(
      {required this.leftTitle,
      this.leftTitleIsSecondaryStyle = false,
      this.rigthTitle,
      this.isChevroned = false,
      this.leadingEmoji,
      this.leftSubtitle,
      this.rightSubtitle,
      this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: SizedBox(
            height: 70,
            child: Column(
              children: [
                Expanded(
                    child: ColoredBox(
                  color: context.theme.commonListItemColor,
                  child: Row(
                    children: [
                      leadingEmoji != null
                          ? Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: context.theme.selectionItemsColor),
                                constraints:
                                    BoxConstraints(maxWidth: 24, maxHeight: 24),
                                child: FittedBox(
                                    child: Text(
                                  leadingEmoji!,
                                )),
                              ))
                          : SizedBox(
                              width: 16,
                            ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              leftTitle,
                              style: !leftTitleIsSecondaryStyle
                                  ? context.textTheme.bodyLarge
                                  : context.textTheme.bodyLarge!.copyWith(
                                      color: context.theme.secondaryTextColor),
                            ),
                            if (leftSubtitle != null)
                              Text(leftSubtitle!,
                                  style: context.textTheme.bodyMedium),
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(rigthTitle ?? '',
                                  style: context.textTheme.bodyLarge),
                              if (rightSubtitle != null)
                                Text(rightSubtitle!,
                                    style: context.textTheme.bodyMedium)
                            ],
                          )),
                      isChevroned
                          ? Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.chevron_right,
                                color: context.theme.dividerColor,
                              ))
                          : SizedBox(
                              width: 16,
                            ),
                    ],
                  ),
                )),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: context.theme.dividerColor,
                ),
              ],
            )));
  }
}
