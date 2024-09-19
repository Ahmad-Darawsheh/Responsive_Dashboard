import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensess_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/all_expensess_item_header.dart';

class InActiveAllItemExpensess extends StatelessWidget {
  const InActiveAllItemExpensess({
    super.key,
    required this.model,
  });

  final AllExpensessModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(
            image: model.image,
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(fit: BoxFit.scaleDown, child: Text(model.title, style: AppStyles.styleRegular16(context))),
          const SizedBox(height: 8,),
          FittedBox(child: Text(model.date, style: AppStyles.styleRegular14(context))),
          const SizedBox(height: 16,),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              
              model.price,
              style: AppStyles.styleSemiBold24(context)
            ),
          )
        ],
      ),
    );
  }
}

class ActiveAllItemExpensess extends StatelessWidget {
  const ActiveAllItemExpensess({
    super.key,
    required this.model,
  });

  final AllExpensessModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(
            image: model.image,
            imageBackgroundColor:  Colors.white.withOpacity(0.10000000000149),
            imageColor: Colors.white,
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(fit: BoxFit.scaleDown, child: Text(model.title, style: AppStyles.styleRegular16(context).copyWith(color: Colors.white))),
          const SizedBox(height: 8,),
          FittedBox(fit: BoxFit.scaleDown, child: Text(model.date, style: AppStyles.styleRegular14(context).copyWith(color: const Color(0xFFFAFAFA)))),
          const SizedBox(height: 16,),
          FittedBox(fit: BoxFit.scaleDown,
            child: Text(
              
              model.price,
              style: AppStyles.styleSemiBold24(context).copyWith(color: Colors.white)
            ),
          )
        ],
      ),
    );
  }
}
