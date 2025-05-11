import 'package:flutter/material.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({super.key, required this.isActive});
  final bool isActive; // Add this property

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isActive ? 40 : 12,
      height: 12,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xff4EB7F2) : const Color(0xffE8E8E8),
        borderRadius: BorderRadius.circular(8),
      ),
      duration: Durations.medium2,
    );
  }
}
