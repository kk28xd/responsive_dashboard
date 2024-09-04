import 'package:flutter/material.dart';

import '../widgets/all_expenses_and_quick_invoice.dart';
import '../widgets/income_section.dart';
import '../widgets/my_cards_and_transactions_history.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoice(),
          SizedBox(
            height: 24,
          ),
          MyCardsAndTransactionsHistory(),
          SizedBox(
            height: 24,
          ),
          IncomeSection(),
        ],
      ),
    );
  }
}
