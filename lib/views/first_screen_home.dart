import 'package:flutter/material.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/desktop_dashboard_layout.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/mobile_dashboard_layout.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/tablet_dashboard_layout.dart';
import 'package:resposive_learn/views/layouts/adaptive_layout.dart';

class FirstScreenHome extends StatefulWidget {
  const FirstScreenHome({super.key});

  @override
  State<FirstScreenHome> createState() => _FirstScreenHomeState();
}

class _FirstScreenHomeState extends State<FirstScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => MobileDashboardLayout(),
        tabletLayout: (context) => TabletDashboardLayout(),
        desktopLayout: (context) => DesktopDashboardLayout(),
      ),
    );
  }
}
