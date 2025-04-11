import 'package:flutter/material.dart';
import 'package:resposive_learn/views/widgets/first%20section/custom_sliver_listview.dart';
import 'package:resposive_learn/views/widgets/first%20section/tablet_listview.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: TabletListview()),
        CustomSliverListview(),
      ],
    );
  }
}
