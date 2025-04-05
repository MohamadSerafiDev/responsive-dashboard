import 'package:flutter/material.dart';
import 'package:resposive_learn/views/first_screen_home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreenHome(),
    );
  }
}
