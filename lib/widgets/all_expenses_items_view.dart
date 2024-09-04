import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/all_expenses_item_model.dart';
import '../utils/app_images.dart';
import 'all_expenses_item.dart';

class AllExpensesItemsView extends StatefulWidget {
  const AllExpensesItemsView({super.key});

  @override
  State<AllExpensesItemsView> createState() => _AllExpensesItemsViewState();
}

class _AllExpensesItemsViewState extends State<AllExpensesItemsView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (selectedIndex != 0) {
                setState(() {
                  selectedIndex = 0;
                });
              }
            },
            child: AllExpensesItem(
              isSelected: selectedIndex == 0,
              allExpensesItemModel: list[0],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (selectedIndex != 1) {
                setState(() {
                  selectedIndex = 1;
                });
              }
            },
            child: AllExpensesItem(
              isSelected: selectedIndex == 1,
              allExpensesItemModel: list[1],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (selectedIndex != 2) {
                setState(() {
                  selectedIndex = 2;
                });
              }
            },
            child: AllExpensesItem(
              isSelected: selectedIndex == 2,
              allExpensesItemModel: list[2],
            ),
          ),
        )
      ],
    );
  }
}

List<AllExpensesItemModel> list = const [
  AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: '\$20,129'),
  AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: '\$20,129'),
  AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: '\$20,129'),
];
