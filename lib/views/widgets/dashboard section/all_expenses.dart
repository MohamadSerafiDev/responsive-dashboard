import 'package:flutter/material.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/all_expenses_row_items.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/all_expenses_upper_row.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(children: [AllExpensesUpperRow(), AllExpensesRowItems()]),
    );
  }
}
