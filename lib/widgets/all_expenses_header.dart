import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:responsive_dashboard/widgets/range_options.dart';

import '../utils/styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: Styles.styleSemiBold20(context),
        ),
        const RangeOptions(
          padding: EdgeInsets.all(12),
        ),
      ],
    );
  }
}
