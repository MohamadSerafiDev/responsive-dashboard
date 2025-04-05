import 'package:flutter/material.dart';

class TopContainter extends StatelessWidget {
  const TopContainter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffb4b4b4),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
