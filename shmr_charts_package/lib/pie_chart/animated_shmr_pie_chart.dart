import 'dart:math';

import 'package:flutter/widgets.dart';

import 'shmr_pie_chart.dart';
import 'models/section_data.dart';

class AnimatedShmrPieChart extends StatefulWidget {
  final List<ShmrPieChartSectionData> oldData;
  final List<ShmrPieChartSectionData> newData;

  const AnimatedShmrPieChart(
      {super.key, required this.oldData, required this.newData});

  @override
  _AnimatedPieChartState createState() => _AnimatedPieChartState();
}

class _AnimatedPieChartState extends State<AnimatedShmrPieChart>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;
  late Animation<double> _opacityAnimation;

  late List<ShmrPieChartSectionData> _currentData;

  @override
  void initState() {
    super.initState();
    _currentData = widget.oldData;

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );

    _rotationAnimation =
        Tween<double>(begin: 0, end: 2 * pi).animate(_controller);
    _opacityAnimation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 1.0, end: 0.0), weight: 50),
      TweenSequenceItem(tween: Tween(begin: 0.0, end: 1.0), weight: 50),
    ]).animate(_controller);

    _controller.addListener(() {
      if (_controller.value >= 0.5 && _currentData != widget.newData) {
        setState(() {
          _currentData = widget.newData;
        });
      }
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Opacity(
          opacity: _opacityAnimation.value,
          child: Transform.rotate(
              angle: _rotationAnimation.value,
              child: ShmrPieChart(
                sections: _currentData,
              )),
        );
      },
    );
  }
}
