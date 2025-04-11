import 'package:flutter/material.dart';
import 'package:resposive_learn/views/widgets/first%20section/gridview_container.dart';

class CustomSliverGridview extends StatelessWidget {
  const CustomSliverGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.all(16),
      sliver: SliverGrid.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: 4,
        itemBuilder: (context, index) => TopContainter(),
      ),
    );
  }
}
