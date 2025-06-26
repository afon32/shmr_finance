import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shmr_finance/utils/strings/s.dart';
import 'package:shmr_finance/utils/themes/app_theme.dart';

class ShmrBottomSheetListItem extends StatelessWidget {
  final IconData leadingIcon;
  final String? title;
  final bool isRejectItem;
  final VoidCallback? onTap;
  const ShmrBottomSheetListItem(
      {required this.leadingIcon,
      this.title,
      this.isRejectItem = false,
      this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: isRejectItem ? context.pop : onTap,
        child: SizedBox(
            height: 70,
            child: ColoredBox(
              color: isRejectItem
                  ? context.theme.rejectButtonColor
                  : context.theme.backgroundColor,
              child: Stack(
                children: [
                  Align(
                      alignment: FractionalOffset(0.0, 0.5),
                      child: Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Row(
                          spacing: 15,
                          children: [
                            Icon(
                              leadingIcon,
                              color: isRejectItem
                                  ? context.theme.backgroundColor
                                  : context.theme.textColor,
                            ),
                            Text(
                                isRejectItem
                                    ? S.of(context).cancel
                                    : title ?? '',
                                style: context.textTheme.bodyLarge!.copyWith(
                                    color: isRejectItem
                                        ? context.theme.backgroundColor
                                        : context.theme.textColor)),
                          ],
                        ),
                      )),
                  if (!isRejectItem)
                    Align(
                      alignment: FractionalOffset(0.5, 1),
                      child: Divider(
                        height: 1,
                        thickness: 1,
                        color: context.theme.dividerColor,
                      ),
                    ),
                ],
              ),
            )));
  }
}
