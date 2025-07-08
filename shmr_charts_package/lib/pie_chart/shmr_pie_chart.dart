import 'package:flutter/widgets.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:shmr_charts_package/pie_chart/models/section_data.dart';

import 'models/view_model.dart';

class ShmrPieChart extends StatelessWidget {
  final List<ShmrPieChartSectionData> sections;
  const ShmrPieChart({super.key, required this.sections});

  @override
  Widget build(BuildContext context) {
    final viewModel = ShmrPieChartViewModel.buildWith(sections);
    return Stack(
      children: [
        PieChart(PieChartData(
            sections: viewModel.sections
                .map((e) => PieChartSectionData(
                    value: e.value, color: e.sectionColor, title: '', radius: 10))
                .toList())),
        if (viewModel.centerTiles != null)
          Align(
            alignment: FractionalOffset(0.5, 0.5),
            child: AspectRatio(
                aspectRatio: 1,
                child: FractionallySizedBox(
                  widthFactor: 0.5,
                  heightFactor: 0.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: viewModel.centerTiles!
                        .map((e) => Row(
                              children: [
                                SizedBox(
                                  height: 5,
                                  width: 5,
                                  child: ColoredBox(color: e.badgeColor),
                                ),
                                Text(
                                  e.tileText,
                                  style: TextStyle(color: e.textColor),
                                  overflow: TextOverflow.fade,
                                )
                              ],
                            ))
                        .toList(),
                  ),
                )),
          )
      ],
    );
  }
}
