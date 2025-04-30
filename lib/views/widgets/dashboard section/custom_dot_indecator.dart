import 'package:flutter/material.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/custom_dot.dart';

class CustomDotIndecator extends StatelessWidget {
  const CustomDotIndecator({
    super.key,
    required this.currentPage,
    required this.cards,
  });

  final int currentPage;
  final int cards;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        cards,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 8),
          child: CustomDot(isActive: currentPage == index),
        ),
      ),
    );
  }
}
