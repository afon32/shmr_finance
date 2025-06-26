import 'package:flutter/material.dart';
import 'package:shmr_finance/utils/themes/app_theme.dart';

class ShmrUniversalListItemWithChanging extends StatelessWidget {
  final String? leadingEmoji;
  final String leftTitle;
  final String? leftSubtitle;
  final String rigthTitle;
  final String? rightSubtitle;
  final bool isChevroned;
  final VoidCallback? onTap;
  final Function(String) onEnter;
  const ShmrUniversalListItemWithChanging(
      {required this.leftTitle,
      required this.rigthTitle,
      this.isChevroned = false,
      this.leadingEmoji,
      this.leftSubtitle,
      this.rightSubtitle,
      this.onTap,
      required this.onEnter,
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
                              _EditableTextField(
                                  initialText: leftTitle,
                                  onSubmitted: (value) => onEnter(value)),
                              if (leftSubtitle != null)
                                Text(leftSubtitle!,
                                    style: context.textTheme.bodyMedium)
                            ],
                          )),
                      Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(rigthTitle,
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

class _EditableTextField extends StatefulWidget {
  final String initialText;
  final ValueChanged<String> onSubmitted;

  const _EditableTextField({
    super.key,
    required this.initialText,
    required this.onSubmitted,
  });

  @override
  State<_EditableTextField> createState() => _EditableTextFieldState();
}

class _EditableTextFieldState extends State<_EditableTextField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    // Инициализируем контроллер с начальным текстом
    _controller = TextEditingController(text: widget.initialText);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
      ),
      // При нажатии Enter вызываем колбэк
      onSubmitted: widget.onSubmitted,
    );
  }
}
