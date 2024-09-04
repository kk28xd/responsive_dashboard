import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});

  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          color: const Color(0xffFAFAFA),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          )),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: Styles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionModel.date,
          style: Styles.styleRegular16(context).copyWith(color: const Color(0xffAAAAAA)),
        ),
        trailing: Text(
          transactionModel.amount,
          style: Styles.styleSemiBold20(context).copyWith(
              color: transactionModel.isWithdrawal == true
                  ? const Color(0xffF3735E)
                  : const Color(0xff7DD97B)),
        ),
      ),
    );
  }
}
