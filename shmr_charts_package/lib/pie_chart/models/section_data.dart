import 'dart:ui';

class ShmrPieChartSectionData {
  final double value;
  final int percent;
  final String name;
  final Color textColor;
  final Color sectionColor;

  ShmrPieChartSectionData(
      {required this.value,
      required this.percent,
      required this.name,
      required this.textColor,
      required this.sectionColor});
}
