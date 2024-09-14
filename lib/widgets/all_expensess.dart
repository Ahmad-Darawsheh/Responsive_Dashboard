import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensess_model.dart';
import 'package:responsive_dashboard/utils/app_images/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expensess_header.dart';

import 'package:responsive_dashboard/widgets/all_expensess_row.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';

// ignore: must_be_immutable
class AllExpensess extends StatelessWidget {
  AllExpensess({super.key});
  List<AllExpensessModel> item = [
    AllExpensessModel(
        image: Assets.imagesMoney,
        title: 'Income',
        date: 'April 2022',
        price: '\$20.219'),
    AllExpensessModel(
        image: Assets.imagesCardDown,
        title: 'Income',
        date: 'April 2022',
        price: '\$20.219'),
    AllExpensessModel(
        image: Assets.imagesCardUp,
        title: 'Income',
        date: 'April 2022',
        price: '\$20.219')
  ];
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          const AllExpensessHeader(),
          const SizedBox(
            height: 16,
          ),
          AllExpensessItemsRow()
        ],
      ),
    );
  }
}
