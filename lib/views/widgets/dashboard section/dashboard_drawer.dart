import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resposive_learn/utils/app_images.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/drawer_item_list_view.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/user_info_list_tile.dart';

class DashboardDrawer extends StatelessWidget {
  const DashboardDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
            leading: SvgPicture.asset(Assets.imagesPerson),
            title: 'Lekan Okeowo',
            subtitle: 'demo@gmail.com',
          ),
          SizedBox(height: 8),
          DrawerItemListView(),
        ],
      ),
    );
  }
}
