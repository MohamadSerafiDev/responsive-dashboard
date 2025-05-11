import 'package:flutter/material.dart';

class CustomSliverListview extends StatelessWidget {
  const CustomSliverListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverList.builder(
        itemBuilder:
            (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: const Color(0xffececec),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
        itemCount: 10,
      ),
    );
  }
}
