import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/latest_transaction.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_form.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_header.dart';


class QucikInvoice extends StatelessWidget {
  const QucikInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          QucikInvoiceHeader(),
          LatestTransactionWidget(),
          Divider(
            height: 48,
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
