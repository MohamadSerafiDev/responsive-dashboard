import 'package:flutter/material.dart';
import 'package:resposive_learn/models/drawer_item_model.dart';
import 'package:resposive_learn/utils/app_images.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int activeIndex = 0;
  final List<DrawerItemModel> drawerItems = [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    DrawerItemModel(title: 'My Transaction', image: Assets.imagesTransactions),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesStats),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWallet),
    DrawerItemModel(title: 'My Investments', image: Assets.imagesChart),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: drawerItems.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            if (index != activeIndex) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: drawerItems[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
