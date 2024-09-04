import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_container.dart';
import 'package:responsive_dashboard/widgets/my_card_section.dart';
import 'package:responsive_dashboard/widgets/transaction_history.dart';

class MyCardsAndTransactionsHistory extends StatelessWidget {
  const MyCardsAndTransactionsHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
        padding: 24,
        child: Column(
          children: [
            MyCardSection(),
            Divider(
              height: 40,
              color: Color(0xffF1F1F1),
            ),
            TransactionHistory(),
          ],
        ));
  }
}
