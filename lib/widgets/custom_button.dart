import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.color, required this.textColor, required this.text});
  final Color color,textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          
            elevation: 0, backgroundColor: color),
        child:  Text(
          text,
          style: AppStyles.styleSemiBold18.copyWith(color: textColor)
        ),
      ),
    );
  }
}
