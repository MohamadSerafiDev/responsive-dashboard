import 'dart:math';

import 'package:flutter/material.dart';
import 'package:resposive_learn/views/layouts/Tablet_layout.dart';
import 'package:resposive_learn/views/layouts/desktop_layout.dart';
import 'package:resposive_learn/views/layouts/mobile_layout.dart';
import 'package:resposive_learn/views/widgets/custom_drawer.dart';

class FirstScreenHome extends StatefulWidget {
  const FirstScreenHome({super.key});

  @override
  State<FirstScreenHome> createState() => _FirstScreenHomeState();
}

class _FirstScreenHomeState extends State<FirstScreenHome> {
  GlobalKey<ScaffoldState> scafoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafoldkey,
      drawer: CustomDrawer(),
      appBar:
          MediaQuery.of(context).size.width < 900
              ? AppBar(
                backgroundColor: Colors.black,
                leading: GestureDetector(
                  onTap: () {
                    scafoldkey.currentState!.openDrawer();
                  },
                  child: Icon(Icons.menu, color: Colors.white),
                ),
              )
              : null,
      backgroundColor: Color(0xffdbdbdb),

      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            return MobileLayout();
          } else if (constraints.maxWidth < 900) {
            return TabletLayout();
          } else {
            return DesktopLayout();
          }
        },
      ),
    );
  }
}
