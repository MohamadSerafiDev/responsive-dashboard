import 'package:flutter/material.dart';
import 'package:resposive_learn/views/widgets/first%20section/custom_sliver_gridview.dart';
import 'package:resposive_learn/views/widgets/first%20section/custom_sliver_listview.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [CustomSliverGridview(), CustomSliverListview()],
    );
  }
}
