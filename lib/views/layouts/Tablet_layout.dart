import 'package:flutter/material.dart';
import 'package:resposive_learn/views/widgets/custom_sliver_listview.dart';
import 'package:resposive_learn/views/widgets/tablet_listview.dart';

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
