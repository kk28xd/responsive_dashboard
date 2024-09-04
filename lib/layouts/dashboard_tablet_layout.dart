import 'package:flutter/material.dart';
import 'package:responsive_dashboard/layouts/dashboard_mobile_layout.dart';

import '../widgets/all_expenses_and_quick_invoice.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/income_section.dart';
import '../widgets/my_cards_and_transactions_history.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 70, child: CustomDrawer()),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 151,
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: DashboardMobileLayout(),
          ),
        ),
        SizedBox(
          width: 24,
        ),
      ],
    );
  }
}
