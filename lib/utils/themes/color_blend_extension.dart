import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shmr_finance/core/local_holders/main_color_holder.dart';

extension ColorBlendExtension on Color {
  Color withMainTintBlend(BuildContext context, int alpha) {
    final tintColor = context.watch<MainColorHolder>().state;
    return Color.alphaBlend(tintColor.withAlpha(alpha), this);
  }
}
