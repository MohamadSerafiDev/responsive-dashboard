import 'package:flutter/material.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/all_expenses.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [const AllExpenses(), SizedBox(height: 24), QuickInvoice()],
    );
  }
}
