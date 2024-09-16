import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
          children: [
            const Text(
              'Income',
              style: AppStyles.styleSemiBold20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                      width: 1, color: const Color(0xFFF1F1F1)),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Row(
                children: [
                  const Text(
                    'Monthly',
                    style: AppStyles.styleMedium16,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Transform.rotate(
                      angle: -1.5707, child: const Icon(Icons.arrow_back_ios_new))
                ],
              ),
            ),
          ],
        );
  }
}