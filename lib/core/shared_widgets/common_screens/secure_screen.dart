import 'dart:ui';

import 'package:flutter/material.dart';

class ShmrSecureScreen extends StatelessWidget {
  const ShmrSecureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
        child: Container(
          color: Colors.black.withOpacity(0.1),
        ),
      ),
    );
  }
}
