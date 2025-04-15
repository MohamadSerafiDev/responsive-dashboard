import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resposive_learn/models/drawer_item_model.dart';
import 'package:resposive_learn/utils/app_images.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/active_and_inactive_drawer_item.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/drawer_item_list_view.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/user_info_list_tile.dart';

class DashboardDrawer extends StatelessWidget {
  const DashboardDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 28),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: UserInfoListTile(
                  leading: SvgPicture.asset(Assets.imagesPerson),
                  title: 'Lekan Okeowo',
                  subtitle: 'demo@gmail.com',
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 8)),
            DrawerItemListView(),

            SliverFillRemaining(
              // hasScrollBody: false,
              hasScrollBody: false,

              child: Column(
                children: [
                  Expanded(flex: 3, child: SizedBox(height: 20)),
                  InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                      title: 'Settings system',
                      image: Assets.imagesSetting,
                    ),
                  ),
                  InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                      title: 'Logout account',
                      image: Assets.imagesLogout,
                    ),
                  ),
                  Expanded(child: SizedBox()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
