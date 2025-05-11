import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:resposive_learn/utils/app_styles.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key, required this.showTitle});
  final bool showTitle;

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeSection = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(ChartData()));
  }

  PieChartData ChartData() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        touchCallback: (p0, piechartevent) {
          if (activeSection !=
              piechartevent?.touchedSection?.touchedSectionIndex) {
            activeSection = piechartevent!.touchedSection!.touchedSectionIndex;
            setState(() {
              print('object');
            });
          }
        },
      ),
      sections: [
        pieChartSectionDataItem(
          const Color(0xff208cc8),
          40,
          0,
          'Design service',
          widget.showTitle,
        ),
        pieChartSectionDataItem(
          const Color(0xff4eb7f2),
          25,
          1,
          'Design Product',
          widget.showTitle,
        ),
        pieChartSectionDataItem(
          const Color(0xff064061),
          20,
          2,
          'Product Royalty',
          widget.showTitle,
        ),
        pieChartSectionDataItem(
          const Color(0xffe2decd),
          22,
          3,
          'Other',
          widget.showTitle,
        ),
      ],
    );
  }

  PieChartSectionData pieChartSectionDataItem(
    Color color,
    double value,
    int index,
    String title,
    bool showTitle,
  ) {
    return PieChartSectionData(
      value: value,
      title: '$title $value%',
      titleStyle: AppStyles.styleMedium20(
        context,
      ).copyWith(color: Colors.black),
      titlePositionPercentageOffset:
          index == 0
              ? -1.4
              : index == 1
              ? -1.7
              : index == 2
              ? -1.4
              : -1.3,
      color: color,
      showTitle: showTitle ? activeSection == index : false,
      radius: activeSection == index ? 55 : 40,
    );
  }
}
