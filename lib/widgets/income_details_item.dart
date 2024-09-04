import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_details_model.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({
    super.key,
    required this.itemDetailsModel,
  });

  final ItemDetailsModel itemDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(
            color: itemDetailsModel.color, shape: const OvalBorder()),
      ),
      title: Text(
        itemDetailsModel.title,
        style: Styles.styleRegular16(context),
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: Styles.styleMedium16(context).copyWith(color: const Color(0xff208CC8)),
      ),
    );
  }
}


