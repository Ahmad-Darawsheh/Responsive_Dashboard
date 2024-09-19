import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive, this.color});
  final bool isActive;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(

      width: isActive?32:8,
      height: 8,
      decoration: ShapeDecoration(
        color:color?? (isActive?const Color(0xFF4DB7F2): const Color(0xFFE7E7E7)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ), duration: const Duration(milliseconds: 300 ),
    );
  }
}
