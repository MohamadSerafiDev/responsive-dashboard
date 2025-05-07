import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/all_expenses_and_quick_invoice_section.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/dashboard_drawer.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/income_analysis.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/my_cards_and_transactions_history.dart';

class TabletDashboardLayout extends StatelessWidget {
  const TabletDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 2, child: DashboardDrawer()),
        Gap(32),
        Expanded(
          flex: 5,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40),
                AllExpensesAndQuickInvoiceSection(),
                Gap(24),
                MyCardsAndTransactionsHistory(),
                Gap(24),
                IncomeAnalysis(),
              ],
            ),
          ),
        ),
        Gap(32),
      ],
    );
  }
}
