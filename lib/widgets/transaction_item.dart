import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.model});
  final TransactionModel model;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(model.title, style: AppStyles.styleMedium16(context)),
        subtitle: Text(model.date, style: AppStyles.styleMedium16(context).copyWith(color: const Color(0xFFAAAAAA))),
        trailing: Text(
          model.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: model.isWithdrawal
                ? const Color(0xFFF3735E)
                : const Color(0xFF7CD87A),
          ),
        ),
      ),
    );
  }
}
