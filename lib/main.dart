import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:resposive_learn/views/first_screen_home.dart';

void main() async {
  runApp(DevicePreview(enabled: false, builder: (contex) => const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const FirstScreenHome(),
      // hsjdjdj fixed
      //test
    );
  }
}
