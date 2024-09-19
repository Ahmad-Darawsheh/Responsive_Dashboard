import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expensess_and_quick_invoice.dart';
import 'package:responsive_dashboard/widgets/cards_and_transactions.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              AllExpensesAndQucikInvoice(),
              SizedBox(height: 24),
              MyCardsAndTransactionHistorySection(),
              SizedBox(height: 24),
            ],
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child:
              IncomeSection(), // No need for Expanded inside SliverFillRemaining
        ),
      ],
    );
  }
}
