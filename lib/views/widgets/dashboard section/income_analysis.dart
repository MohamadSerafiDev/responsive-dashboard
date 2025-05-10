import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/custom_background_container.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/income_header.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/income_section_body.dart';

class IncomeAnalysis extends StatelessWidget {
  const IncomeAnalysis({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 48),
      child: CustomBackgroundContainer(
        child: Column(children: [IncomeHeader(), Gap(20), IncomeSectionBody()]),
      ),
    );
  }
}
