import 'package:flutter/material.dart';
import 'package:resposive_learn/views/widgets/first%20section/custom_drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: Color(0xffdbdbdb),
      child: const Column(
        children: [
          DrawerHeader(child: Icon(Icons.favorite, size: 50)),
          CustomDrawerItem(icon: Icons.home, text: 'DASHBOARD'),
          CustomDrawerItem(icon: Icons.settings, text: 'SETTING'),
          CustomDrawerItem(icon: Icons.info, text: 'ABOUT'),
          CustomDrawerItem(icon: Icons.logout, text: 'LOGOUT'),
        ],
      ),
    );
  }
}
