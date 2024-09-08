import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_images/app_images.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: const ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: SvgPicture.asset(image),
          ),
        ),
        
        Transform.rotate(
            angle: -1.57079*2,
            child: const Icon(Icons.arrow_back_ios_new_outlined))
      ],
    );
  }
}
