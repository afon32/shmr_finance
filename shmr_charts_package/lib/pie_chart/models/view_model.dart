import 'dart:ui';

import 'section_data.dart';

class ShmrPieChartViewModel {
  final List<ShmrPieChartSectionData> sections;
  final List<CenterTile>? centerTiles;

  ShmrPieChartViewModel._({
    required this.sections,
    required this.centerTiles,
  });

  factory ShmrPieChartViewModel.buildWith(
      List<ShmrPieChartSectionData> sections) {
    sections.sort((a, b) => b.percent.compareTo(a.percent));
    final centerTiles = sections.isNotEmpty
        ? sections.length > 2
            ? sections
                .sublist(0, 2)
                .map((e) => CenterTile(
                    badgeColor: e.sectionColor,
                    tileText: e.name,
                    textColor: e.textColor))
                .toList()
            : [
                CenterTile(
                    badgeColor: sections.first.sectionColor,
                    tileText: sections.first.name,
                    textColor: sections.first.textColor)
              ]
        : null;
    return ShmrPieChartViewModel._(
        sections: sections, centerTiles: centerTiles);
  }
}

class CenterTile {
  final Color badgeColor;
  final String tileText;
  final Color textColor;

  CenterTile({
    required this.badgeColor,
    required this.tileText,
    required this.textColor,
  });
}
