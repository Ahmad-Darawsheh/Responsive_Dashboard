import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensess_model.dart';
import 'package:responsive_dashboard/utils/app_images/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expensess_header.dart';

import 'package:responsive_dashboard/widgets/all_expensess_row.dart';

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
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
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

