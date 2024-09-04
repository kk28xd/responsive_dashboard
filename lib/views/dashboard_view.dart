import 'package:flutter/material.dart';
import 'package:responsive_dashboard/layouts/dashboard_tablet_layout.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout.dart';
import '../layouts/dashboard_desktop_layout.dart';
import '../layouts/dashboard_mobile_layout.dart';
import '../widgets/custom_drawer.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: MediaQuery.of(context).size.width < SizeConfig.mobileLayoutBreakPoint
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xffF7F9FA),
              leading: IconButton(
                icon: IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    globalKey.currentState!.openDrawer();
                  },
                ),
                onPressed: () {},
              ),
            )
          : null,
      drawer:
          MediaQuery.of(context).size.width < SizeConfig.mobileLayoutBreakPoint ? const CustomDrawer() : null,
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
        tabletLayout: (context) => const DashboardTabletLayout(),
        mobileLayout: (context) => const DashboardMobileLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
