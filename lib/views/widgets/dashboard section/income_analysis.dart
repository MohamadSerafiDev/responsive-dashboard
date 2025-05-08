import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_learn/models/income_chart_detail_model.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/custom_background_container.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/income_chart.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/income_details_item.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/income_header.dart';

class IncomeAnalysis extends StatelessWidget {
  const IncomeAnalysis({super.key});
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
    return CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeHeader(),
          Gap(20),
          Row(
            children: [
              Expanded(child: IncomeChart()),
              Gap(40),
              Expanded(
                child: Column(
                  children:
                      items
                          .map((item) => IncomeDetailsItem(item: item))
                          .toList(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
