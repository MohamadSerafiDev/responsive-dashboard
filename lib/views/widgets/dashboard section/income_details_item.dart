import 'package:flutter/material.dart';
import 'package:resposive_learn/models/income_chart_detail_model.dart';
import 'package:resposive_learn/utils/app_styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.item});

  final IncomeChartDetailModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 16,
        height: 16,
        decoration: ShapeDecoration(shape: OvalBorder(), color: item.color),
      ),
      title: Text(
        item.title,
        style: AppStyles.styleMedium20(
          context,
        ).copyWith(color: Color(0xff064061)),
      ),
      trailing: Text(
        item.percentage,
        style: AppStyles.styleMedium16(
          context,
        ).copyWith(color: Color(0xff208CC8)),
      ),
    );
  }
}
