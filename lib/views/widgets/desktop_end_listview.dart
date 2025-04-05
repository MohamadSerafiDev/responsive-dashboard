import 'package:flutter/material.dart';

class DesktopEndListview extends StatelessWidget {
  const DesktopEndListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 16),
      child: ListView(
        children: [
          Container(
            height: 450,
            decoration: BoxDecoration(
              color: Color(0xffb4b4b4),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 16),
          Container(
            height: 600,
            decoration: BoxDecoration(
              color: Color(0xffececec),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}
