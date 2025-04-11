import 'package:flutter/material.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/dashboard_drawer.dart';

class DesktopDashboardLayout extends StatelessWidget {
  const DesktopDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [Expanded(child: DashboardDrawer())]);
  }
}
