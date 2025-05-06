import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/custom_background_container.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/income_chart.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/income_details_list.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/income_header.dart';

class IncomeAnalysis extends StatelessWidget {
  const IncomeAnalysis({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeHeader(),
          Gap(20),
          Expanded(
            child: Row(
              children: [
                Expanded(child: IncomeChart()),
                Gap(40),
                Expanded(child: IncomeDetailsList()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
