import 'package:flutter/material.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/all_expenses.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/dashboard_drawer.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/quick_invoice.dart';

class DesktopDashboardLayout extends StatelessWidget {
  const DesktopDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: DashboardDrawer()),
        SizedBox(width: 32),
        Expanded(
          child: Column(
            children: [
              Expanded(child: AllExpenses()),
              SizedBox(height: 32),
              Expanded(child: QuickInvoice()),
            ],
          ),
        ),
      ],
    );
  }
}
