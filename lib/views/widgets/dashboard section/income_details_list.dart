import 'package:flutter/material.dart';
import 'package:resposive_learn/models/income_chart_detail_model.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/income_details_item.dart';

class IncomeDetailsList extends StatelessWidget {
  const IncomeDetailsList({super.key});
  static List<IncomeChartDetailModel> items = [
    IncomeChartDetailModel(
      color: const Color(0xff208cc8),
      title: 'Design service',
      percentage: '40%',
    ),
    IncomeChartDetailModel(
      color: const Color(0xff4eb7f2),
      title: 'Design product',
      percentage: '25%',
    ),
    IncomeChartDetailModel(
      color: const Color(0xff064061),
      title: 'Product royalty',
      percentage: '20%',
    ),
    IncomeChartDetailModel(
      color: const Color(0xffe2decd),
      title: 'Other',
      percentage: '22%',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return IncomeDetailsItem(item: items[index]);
      },
    );
  }
}
