import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/all_expenses_and_quick_invoice_section.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/income_analysis.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/my_cards_and_transactions_history.dart';

class MobileDashboardLayout extends StatelessWidget {
  const MobileDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          Gap(24),
          MyCardsAndTransactionsHistory(),
          Gap(24),
          IncomeAnalysis(),
        ],
      ),
    );
  }
}
