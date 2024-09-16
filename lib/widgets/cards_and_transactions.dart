import 'package:flutter/material.dart';
import 'package:responsive_dashboard/my_cards_section.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/transaction_history.dart';

class MyCardsAndTransactionHistorySection extends StatelessWidget {
  const MyCardsAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child:  Column(
        children: [
           MyCardsSection(),
           Divider(height: 40,),
           TransactionHistory(),
        ],
      ),
    );
  }
}
