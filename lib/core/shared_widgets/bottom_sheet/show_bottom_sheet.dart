import 'package:flutter/material.dart';
import 'package:shmr_finance/utils/themes/app_theme.dart';

void shmrShowBottomSheet(BuildContext context, List<Widget> items) {
  showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      backgroundColor: context.theme.backgroundColor,
      isScrollControlled: true,
      builder: (context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: context.theme.secondaryTextColor,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              for (Widget item in items) item,
            ],
          ),
        );
      });
}
