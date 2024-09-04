import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/detailed_income_chart.dart';

import 'income_chart.dart';
import 'income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width > 1400 || width < SizeConfig.tabletLayoutBreakPoint
        ? const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(flex: 2,child: IncomeChart()),
              SizedBox(
                width: 15,
              ),
              Expanded(flex: 3,child: IncomeDetails()),
            ],
          )
        : const Padding(
          padding: EdgeInsets.all(16.0),
          child: DetailedIncomeChart(),
        );
  }
}
