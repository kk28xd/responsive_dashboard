import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import '../widgets/all_expenses_and_quick_invoice.dart';
import '../widgets/income_section.dart';
import '../widgets/my_card_section.dart';
import '../widgets/my_cards_and_transactions_history.dart';
import '../widgets/transaction_history.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 70, child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 268,
          child: CustomScrollView(
            scrollDirection: Axis.vertical,
            slivers: [
              SliverToBoxAdapter(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 151,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          AllExpensesAndQuickInvoice(),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      flex: 117,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          MyCardsAndTransactionsHistory(),
                          SizedBox(
                            height: 24,
                          ),
                          IncomeSection(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
