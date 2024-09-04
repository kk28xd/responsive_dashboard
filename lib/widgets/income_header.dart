import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/range_options.dart';

import '../utils/styles.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: Styles.styleSemiBold20(context),
        ),
        const RangeOptions(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        ),
      ],
    );
  }
}
