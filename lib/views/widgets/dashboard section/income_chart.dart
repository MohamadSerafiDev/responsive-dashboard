import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:resposive_learn/utils/app_styles.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

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
        pieChartSectionDataItem(Color(0xff208cc8), 40, 0, 'Design service'),
        pieChartSectionDataItem(Color(0xff4eb7f2), 25, 1, 'Design Product'),
        pieChartSectionDataItem(Color(0xff064061), 20, 2, 'Product Royalty'),
        pieChartSectionDataItem(Color(0xffe2decd), 22, 3, 'Other'),
      ],
    );
  }

  PieChartSectionData pieChartSectionDataItem(
    Color color,
    double value,
    int index,
    String title,
  ) {
    return PieChartSectionData(
      value: value,
      title: title,
      titleStyle: AppStyles.styleRegular16(context),
      titlePositionPercentageOffset: -1.2,
      color: color,
      showTitle: activeSection == index,
      radius: activeSection == index ? 55 : 40,
    );
  }
}
