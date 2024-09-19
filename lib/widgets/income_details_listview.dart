import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_model.dart';
import 'package:responsive_dashboard/widgets/income_details.dart';

class IncomeDetailsListview extends StatelessWidget {
  const IncomeDetailsListview({super.key});
  static const items = [
    IncomeModel(
      color: Color(0xFF208BC7),
      percent: '40%',
      type: 'Design service',
    ),
    IncomeModel(
      color: Color(0xFF4DB7F2),
      percent: '25%',
      type: 'Design product',
    ),
    IncomeModel(
      color: Color(0xFF064060),
      percent: '20%',
      type: 'Product royalty',
    ),
    IncomeModel(
      color: Color(0xFFE2DECD),
      percent: '15%',
      type: 'Other',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => IncomeDetails(model: e)).toList(),
    );
    // return ListView.builder(
    //   itemBuilder: (context, index) => IncomeDetails(
    //     model: items[index],
    //   ),
    //   itemCount: items.length,
    // );
  }
}
