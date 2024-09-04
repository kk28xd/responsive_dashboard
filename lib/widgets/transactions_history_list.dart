import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/transaction_item.dart';

import '../models/transaction_model.dart';

class TransactionHistoryList extends StatelessWidget {
  const TransactionHistoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          3,
          (index) => Padding(
                padding: EdgeInsets.symmetric(vertical: index == 1 ? 12 : 0),
                child: TransactionItem(
                  transactionModel: list[index],
                ),
              )),
    );
  }
}

List<TransactionModel> list = const [
  TransactionModel(
      date: '13 Apr, 2022 ',
      title: 'Cash Withdrawal',
      amount: '\$20,129',
      isWithdrawal: true),
  TransactionModel(
      date: '13 Apr, 2022 at 3:30 PM',
      title: 'Landing Page project',
      amount: '\$2,000',
      isWithdrawal: false),
  TransactionModel(
      date: '13 Apr, 2022 at 3:30 PM',
      title: 'Juni Mobile App project',
      amount: '\$20,129',
      isWithdrawal: false),
];
