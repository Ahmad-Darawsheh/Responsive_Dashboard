import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_dot.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key, required this.model});
  final IncomeModel model;
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CustomDotIndicator(
        isActive: false,
        color: model.color,
      ),
      title: Text(
        model.type,
        style: AppStyles.styleMedium16(context).copyWith(fontSize: 10,),
      ),
      trailing: Text(
        model.percent,
        style: AppStyles.styleRegular16(context).copyWith(color:const Color(0xFF208CC8)),
      ),
    );
  }
}
