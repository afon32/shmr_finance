import 'package:flutter/material.dart';
import 'package:shmr_finance/core/shared_widgets/local_auth/components/num_button.dart';
import 'package:shmr_finance/utils/themes/app_theme.dart';
import 'package:shmr_finance/utils/themes/color_blend_extension.dart';

class PinInputScreen extends StatefulWidget {
  final Function(String) onAccept;
  const PinInputScreen({
    super.key,
    required this.onAccept,
  });
  @override
  State<PinInputScreen> createState() => _PinInputScreenState();
}

class _PinInputScreenState extends State<PinInputScreen> {
  String value = '';

  void tapOnNumber(String number) {
    if (value.length < 4) {
      setState(() {
        value = '$value$number';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        spacing: 25,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              4,
              (index) => Column(
                children: [
                  if (value.length >= index + 1)
                    Icon(
                      Icons.circle,
                      color: context.theme.mainThemeColor
                          .withMainTintBlend(context, 120),
                    )
                  else
                    Icon(Icons.circle),
                  Icon(Icons.minimize_outlined),
                ],
              ),
            ),
          ),
          Row(
            children: List.generate(
              3,
              (index) => Expanded(
                child: NumButton(
                  value: (index + 1).toString(),
                  onTap: tapOnNumber,
                ),
              ),
            ),
          ),
          Row(
            children: List.generate(
              3,
              (index) => Expanded(
                child: NumButton(
                  value: (index + 4).toString(),
                  onTap: tapOnNumber,
                ),
              ),
            ),
          ),
          Row(
            children: List.generate(
              3,
              (index) => Expanded(
                child: NumButton(
                  value: (index + 7).toString(),
                  onTap: tapOnNumber,
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      value = value.isNotEmpty
                          ? value.substring(0, value.length - 1)
                          : value;
                    });
                  },
                  icon: Icon(Icons.backspace_outlined),
                ),
              ),
              Expanded(
                child: NumButton(
                  value: '0',
                  onTap: tapOnNumber,
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () =>
                      value.length == 4 ? widget.onAccept(value) : null,
                  icon: Icon(Icons.check),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
