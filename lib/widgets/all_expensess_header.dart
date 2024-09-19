import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/range_options.dart';

class AllExpensessHeader extends StatelessWidget {
  const AllExpensessHeader({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          'All Expensess',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(child: const SizedBox()),
        const RangeOptions(),
      ],
    );
  }
}

