import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';

import '../models/item_details_model.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeSection = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(PieChartData(
          pieTouchData: PieTouchData(
            enabled: true,
            touchCallback: (p0, p1) {
              setState(() {
                activeSection = p1?.touchedSection?.touchedSectionIndex ?? -1;
              });
            },
          ),
          sectionsSpace: 0,
          sections: [
            PieChartSectionData(
                titlePositionPercentageOffset: activeSection == 0 ? 1.5 : null,
                color: const Color(0xff208CC8),
                title: activeSection == 0 ? list[0].title : list[0].value,
                value: 40,
                titleStyle: Styles.styleMedium16(context)
                    .copyWith(color: activeSection == 0 ? null : Colors.white),
                radius: activeSection == 0 ? 65 : 50),
            PieChartSectionData(
                titlePositionPercentageOffset: activeSection == 1 ? 2.1: null,
                color: const Color(0xff4EB7F2),
                title: activeSection == 1 ? list[1].title : list[1].value,
                value: 25,
                titleStyle: Styles.styleMedium16(context)
                    .copyWith(color: activeSection == 1 ? null : Colors.white),
                radius: activeSection == 1 ? 65 : 50),
            PieChartSectionData(
                titlePositionPercentageOffset: activeSection == 2 ? 1.4 : null,
                color: const Color(0xff064061),
                title: activeSection == 2 ? list[2].title : list[2].value,
                value: 20,
                titleStyle: Styles.styleMedium16(context)
                    .copyWith(color: activeSection == 2 ? null : Colors.white),
                radius: activeSection == 2 ? 65 : 50),
            PieChartSectionData(
                titlePositionPercentageOffset: activeSection == 3 ? 1.5 : null,
                color: const Color(0xffE2DECD),
                title: activeSection == 3 ? list[3].title : list[3].value,
                value: 22,
                titleStyle: Styles.styleMedium16(context)
                    .copyWith(color: activeSection == 3 ? null : Colors.white),
                radius: activeSection == 3 ? 65 : 50),
          ])),
    );
  }
}

List<ItemDetailsModel> list = const [
  ItemDetailsModel(
      color: Color(0xff208CC8), value: '40%', title: 'Design service'),
  ItemDetailsModel(
      color: Color(0xff4EB7F2), value: '25%', title: 'Design product'),
  ItemDetailsModel(
      color: Color(0xff064061), value: '20%', title: 'Product royalti'),
  ItemDetailsModel(color: Color(0xffE2DECD), value: '22%', title: 'Other'),
];
