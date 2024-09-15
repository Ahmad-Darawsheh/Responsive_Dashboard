import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expensess.dart';
import 'package:responsive_dashboard/widgets/qucik_invoice.dart';

class AllExpensesAndQucikInvoice extends StatelessWidget {
  const AllExpensesAndQucikInvoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        AllExpensess(),
        const SizedBox(height: 24,),
        const QucikInvoice(),
      ],
    );
  }
}
