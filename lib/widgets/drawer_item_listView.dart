import 'package:flutter/material.dart';

import '../models/drawer_item_model.dart';
import '../utils/app_images.dart';
import 'custom_drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      // shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CustomDrawerItem(
              drawerItemModel: items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}

List<DrawerItemModel> items = const [
  DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
  DrawerItemModel(image: Assets.imagesMyTransctions, title: 'My Transaction'),
  DrawerItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
  DrawerItemModel(image: Assets.imagesWalletAccount, title: 'Wallet Account'),
  DrawerItemModel(image: Assets.imagesMyInvestments, title: 'My Investments'),
];
