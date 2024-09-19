import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';

class AdaptiveLayout extends StatefulWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobile_layout,
      required this.tablet_layout,
      required this.desktop_layout});

  final WidgetBuilder mobile_layout, tablet_layout, desktop_layout;

  @override
  State<AdaptiveLayout> createState() => _AdaptiveLayoutState();
}

class _AdaptiveLayoutState extends State<AdaptiveLayout> {
  final GlobalKey<ScaffoldState> sKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: sKey,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              leading: IconButton(
                  onPressed: () {
                    sKey.currentState!.openDrawer();
                  },
                  icon: const  Icon(Icons.menu)),
              elevation: 0,
              backgroundColor: const Color(0xFFFAFAFA),
              
            )
          : null,
          drawer: MediaQuery.sizeOf(context).width < 800?const CustomDrawer():null,
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 800) {
          return widget.mobile_layout(context);
        } else if (constraints.maxWidth < 1300) {
          return widget.tablet_layout(context);
        } else {
          return widget.desktop_layout(context);
        }
      }),
    );
  }
}
