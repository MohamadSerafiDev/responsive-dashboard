import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/all_expenses_row_items.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/all_expenses_upper_row.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [const AllExpensesUpperRow(), Gap(16), AllExpensesRowItems()],
      ),
    );
  }
}
