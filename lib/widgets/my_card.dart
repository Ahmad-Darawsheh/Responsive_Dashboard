import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_images/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          color: const Color(0xFF4EB7F2),
            image: const DecorationImage(
                image:  AssetImage(Assets.imagesCardDetails)),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        child: Column(
       crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Card Name',
                style: AppStyles.styleMedium20(context).copyWith(color: Colors.white),
              ),
              subtitle: Text(
                'Ahmad Darawsheh',
                style: AppStyles.styleMedium20(context).copyWith(color: Colors.white),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 7123 9913 0016',
                    style: AppStyles.styleSemiBold24(context).copyWith(color: Colors.white),
                  ),
                  Text(
                    '12/25 - 124',
                    style: AppStyles.styleRegular16(context).copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            const Flexible(child:  SizedBox(height: 26,))
          ],
        ),
      ),
    );
  }
}
