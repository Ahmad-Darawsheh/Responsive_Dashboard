import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensess_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/all_expensess_item_header.dart';
import 'package:responsive_dashboard/widgets/inactive_item_and_active.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem(
      {super.key, required this.model, required this.isSelected});
  final AllExpensessModel model;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllItemExpensess(model: model)
        : InActiveAllItemExpensess(
            model: model,
          );
  }
}
