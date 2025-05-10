import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_learn/models/income_chart_detail_model.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/income_chart.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/income_details_item.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  static List<IncomeChartDetailModel> items = [
    IncomeChartDetailModel(
      color: Color(0xff208cc8),
      title: 'Design service',
      percentage: '40%',
    ),
    IncomeChartDetailModel(
      color: Color(0xff4eb7f2),
      title: 'Design product',
      percentage: '25%',
    ),
    IncomeChartDetailModel(
      color: Color(0xff064061),
      title: 'Product royalty',
      percentage: '20%',
    ),
    IncomeChartDetailModel(
      color: Color(0xffe2decd),
      title: 'Other',
      percentage: '22%',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return width < 1710 && width > 1300
        ? Row(children: [Expanded(child: IncomeChart(showTitle: true))])
        : Row(
          children: [
            Expanded(child: IncomeChart(showTitle: false)),
            Gap(40),
            Expanded(
              flex: 2,
              child: Column(
                children:
                    items.map((item) => IncomeDetailsItem(item: item)).toList(),
              ),
            ),
          ],
        );
  }
}
