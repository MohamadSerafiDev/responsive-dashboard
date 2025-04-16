import 'package:flutter/material.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/all_expenses.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/dashboard_drawer.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/income_analysis.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/my_card_and_transactions.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/quick_invoice.dart';

class DesktopDashboardLayout extends StatelessWidget {
  const DesktopDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 19, child: DashboardDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 42,
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              children: [AllExpenses(), SizedBox(height: 24), QuickInvoice()],
            ),
          ),
        ),
        SizedBox(width: 24),
        Expanded(
          flex: 33,
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                MyCardAndTransactions(),
                SizedBox(height: 24),
                Flexible(child: IncomeAnalysis()),
              ],
            ),
          ),
        ),
        SizedBox(width: 32),
      ],
    );
  }
}
