import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

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
        PieChartSectionData(
          value: 40,
          color: Color(0xff208cc8),
          showTitle: false,
          radius: activeSection == 0 ? 45 : 30,
        ),
        PieChartSectionData(
          value: 25,
          color: Color(0xff4eb7f2),
          showTitle: false,
          radius: activeSection == 1 ? 45 : 30,
        ),
        PieChartSectionData(
          value: 20,
          color: Color(0xff064061),
          showTitle: false,
          radius: activeSection == 2 ? 45 : 30,
        ),
        PieChartSectionData(
          value: 22,
          color: Color(0xffe2decd),
          showTitle: false,
          radius: activeSection == 3 ? 45 : 30,
        ),
      ],
    );
  }
}
