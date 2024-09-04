import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dashboard/cubits/my_card_cubit/my_cards_cubit.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/widgets/my_cards_page_view.dart';

import 'dots_indicator.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyCardsCubit(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My card',
            style: Styles.styleSemiBold20(context),
          ),
          const SizedBox(
            height: 20,
          ),
          const MyCardsPageView(),
          const SizedBox(
            height: 19,
          ),
          const DotsIndicator(),
        ],
      ),
    );
  }
}

// void initState() {
//   pageController = PageController();
//   pageController.addListener(() {
//     setState(() {
//       currentPageIndex = pageController.page!.toInt();
//     });
//   });
