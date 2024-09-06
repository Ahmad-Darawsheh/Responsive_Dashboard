import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobile_layout,
      required this.tablet_layout,
      required this.desktop_layout});

  final WidgetBuilder mobile_layout, tablet_layout, desktop_layout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return  mobile_layout(context);
      } else if (constraints.maxWidth < 900) {
        return  tablet_layout(context);
      } else {
        return desktop_layout(context);
      }
    });
  }
}