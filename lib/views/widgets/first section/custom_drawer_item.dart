import 'package:flutter/material.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListTile(
        leading: Icon(icon),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(text, style: const TextStyle(letterSpacing: 3)),
        ),
      ),
    );
  }
}
