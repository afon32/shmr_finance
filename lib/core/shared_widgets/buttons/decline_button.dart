import 'package:flutter/material.dart';
import 'package:shmr_finance/utils/themes/app_theme.dart';

class ShmrDeclineButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const ShmrDeclineButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 15, left: 15, top: 15),
        child: InkWell(
          onTap: onTap,
          child: SizedBox(
            height: 30,
            width: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: context.theme.rejectButtonColor),
              child: Center(
                child: Text(text, style: context.textTheme.bodyLarge),
              ),
            ),
          ),
        ));
  }
}
