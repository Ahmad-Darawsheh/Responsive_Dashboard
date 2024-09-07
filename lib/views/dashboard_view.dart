import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/adaptive_layout.dart';
import 'package:responsive_dashboard/widgets/dashboard_desktop.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
          mobile_layout: (context) => const SizedBox(),
          tablet_layout: (context) => const SizedBox(),
          desktop_layout: (context) =>const DashboardDesktopLayout()),
    );
  }
}
