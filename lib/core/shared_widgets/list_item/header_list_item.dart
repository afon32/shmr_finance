import 'package:flutter/material.dart';
import 'package:shmr_finance/utils/themes/app_theme.dart';

class ShmrHeaderListItem extends StatelessWidget {
  final String? leadingEmoji;
  final String leftTitle;
  final String rigthTitle;
  final bool isChevroned;
  final VoidCallback? onTap;
  const ShmrHeaderListItem(
      {super.key,
      this.leadingEmoji,
      required this.leftTitle,
      required this.rigthTitle,
      this.isChevroned = false,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: SizedBox(
            height: 56,
            child: Column(
              children: [
                Expanded(
                    child: ColoredBox(
                  color: context.theme.selectionItemsColor,
                  child: Row(
                    children: [
                      leadingEmoji != null
                          ? Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: context.theme.commonListItemColor),
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
                              Text(leftTitle),
                            ],
                          )),
                      Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(rigthTitle),
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
                  height: 0.5,
                  thickness: 1,
                  color: context.theme.dividerColor,
                ),
              ],
            )));
  }
}
