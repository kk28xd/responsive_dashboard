import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/income_details_item.dart';

import '../models/item_details_model.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          4,
          (i) => Padding(
                padding: EdgeInsets.only(bottom: i < 3 ? 12 : 0),
                child: IncomeDetailsItem(
                  itemDetailsModel: list[i],
                ),
              )),
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
