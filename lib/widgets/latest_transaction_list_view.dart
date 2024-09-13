import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images/app_images.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    UserInfoModel(
        image: Assets.imagesFace1,
        title: 'Madrani Andi',
        subtitle: 'Madrani12@gmail.com'),
    UserInfoModel(
        image: Assets.imagesFace2,
        title: 'Madrani Andi',
        subtitle: 'Madrani12@gmail.com'),
    UserInfoModel(
        image: Assets.imagesFace3,
        title: 'Madrani Andi',
        subtitle: 'Madrani12@gmail.com'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.asMap().entries.map((e) {
          int index = e.key;
          var item = e.value;
          return IntrinsicWidth(
            child: UserInfoListTile(
              image: items[index].image,
              subtitle: items[index].subtitle,
              title: items[index].title,
            ),
          );
        }).toList(),
      ),
    );
    //  SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) => IntrinsicWidth(
    //       child: UserInfoListTile(
    //           image: items[index].image,
    //           title: items[index].title,
    //           subtitle: items[index].subtitle),
    //     ),
    //     itemCount: items.length,
    //   ),
    // );
  }
}
