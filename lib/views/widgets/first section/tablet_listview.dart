import 'package:flutter/material.dart';
import 'package:resposive_learn/views/widgets/first%20section/gridview_container.dart';

class TabletListview extends StatelessWidget {
  const TabletListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        height: 150,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return const Padding(
              padding: EdgeInsets.only(right: 16),
              child: AspectRatio(aspectRatio: 1, child: TopContainter()),
            );
          },
        ),
      ),
    );
  }
}
