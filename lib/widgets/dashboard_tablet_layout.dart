import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expensess_and_quick_invoice.dart';
import 'package:responsive_dashboard/widgets/cards_and_transactions.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';


class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Expanded(child: CustomDrawer()),
      SizedBox(width: 32,),
      Expanded(
        flex: 3,
        child: DashboardMobileLayout(),

      ),
      SizedBox(width: 32,),
      
    ]);
  }
}

