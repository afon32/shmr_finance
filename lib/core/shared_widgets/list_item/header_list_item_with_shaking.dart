import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shake_gesture/shake_gesture.dart';
import 'package:shmr_finance/utils/themes/app_theme.dart';

class ShmrHeaderListItemWithShaking extends StatelessWidget {
  final String? leadingEmoji;
  final bool isGreenEmoji;
  final String leftTitle;
  final String rigthTitle;
  final bool isChevroned;
  final VoidCallback? onTap;
  final bool withShakingRightTitle;
  const ShmrHeaderListItemWithShaking(
      {super.key,
      this.leadingEmoji,
      this.isGreenEmoji = true,
      required this.leftTitle,
      required this.rigthTitle,
      this.isChevroned = false,
      this.onTap,
      this.withShakingRightTitle = false});

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
                                    color: isGreenEmoji
                                        ? context.theme.commonListItemColor
                                        : context.theme.backgroundColor),
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
                                style: context.textTheme.bodyLarge,
                              ),
                            ],
                          )),
                      Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [_ShakingWidget(title: rigthTitle)],
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

class _ShakingWidget extends StatefulWidget {
  final String title;
  const _ShakingWidget({required this.title, super.key});

  @override
  State<_ShakingWidget> createState() => __ShakingWidgetState();
}

class __ShakingWidgetState extends State<_ShakingWidget> {
  bool wasShaked = false;

  @override
  Widget build(BuildContext context) {
    return ShakeGesture(
        onShake: () {
          print('shake');
          setState(() {
            wasShaked = !wasShaked;
          });
        },
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 400),
          transitionBuilder: (child, animation) => FadeTransition(
            opacity: animation,
            child: child,
          ),
          child: !wasShaked
              ? Stack(
                  children: [
                    Text(widget.title, style: context.textTheme.bodyLarge),
                    Positioned.fill(
                        child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                        child: Container(
                          color: Colors.black.withOpacity(0.15),
                        ),
                      ),
                    )),
                  ],
                )
              : Text(widget.title, style: context.textTheme.bodyLarge),
        ));
  }

  double getTextWidth(String text, TextStyle? style) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout();
    return textPainter.size.width;
  }
}
