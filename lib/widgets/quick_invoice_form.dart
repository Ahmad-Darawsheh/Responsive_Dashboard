import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_button.dart';
import 'package:responsive_dashboard/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Customer name', hint: 'Type customer name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: TitleTextField(
                    title: 'Customer email', hint: 'Type customer email')),
          ],
        ),
        //SizedBox(height: 24,),
        Row(
          children: [
            Expanded(
                child:
                    TitleTextField(title: 'Item name', hint: 'Type item name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(title: 'Item amount', hint: 'USD'),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(child: CustomButton(color:  Color(0xFFFFFFFF),textColor:Color(0xFF4DB7F2) ,text:'Add More Details')),
            SizedBox(
              width: 24,
            ),
            Expanded(child: CustomButton(color:  Color(0xFF4DB7F2),textColor: Colors.white,text:'Send Money')),
          ],
        ),
      ],
    );
  }
}
