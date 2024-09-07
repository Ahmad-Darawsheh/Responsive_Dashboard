import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images/app_images.dart';
import 'package:responsive_dashboard/widgets/darawer_item.dart';

class DrawerListView extends StatefulWidget {
  const DrawerListView({super.key});

  @override
  State<DrawerListView> createState() => _DrawerListViewState();
}

class _DrawerListViewState extends State<DrawerListView> {
  int activeIndex = 0;
  final List<DrawerItemModel> items = [
    const DrawerItemModel(image: Assets.imagesCategory, title: 'Dashboard'),
    const DrawerItemModel(
        image: Assets.imagesConvertCard, title: 'My Transaction'),
    const DrawerItemModel(image: Assets.imagesGraph, title: 'Statistics'),
    const DrawerItemModel(image: Assets.imagesWallet2, title: 'Wallet Account'),
    const DrawerItemModel(image: Assets.imagesChart, title: 'My investments'),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      
    
      itemCount: items.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (activeIndex != index) {
            setState(() {
              activeIndex = index;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: DarawerItem(
            drawerItemModel: items[index],
            isActive: activeIndex == index,
          ),
        ),
      ),
    );
  }
}
