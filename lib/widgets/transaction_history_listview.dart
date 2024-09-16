import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/widgets/transaction_item.dart';

class TransactionHistoryListview extends StatelessWidget {
  const TransactionHistoryListview({super.key});
  static const items = [
    TransactionModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022 ',
        amount: '\$20,129',
        isWithdrawal: true),
    TransactionModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 ',
        amount: '\$2,000',
        isWithdrawal: false),
    TransactionModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 ',
        amount: '\$20,129',
        isWithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => TransactionItem(model: items[index]),
      itemCount: items.length,
      shrinkWrap: true,
    );
  }
}
