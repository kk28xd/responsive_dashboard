import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dashboard/cubits/my_card_cubit/my_cards_cubit.dart';
import 'package:responsive_dashboard/cubits/my_card_cubit/my_cards_states.dart';
import 'package:responsive_dashboard/widgets/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyCardsCubit,MyCardsStates>(
      builder: (context, state) {
        int currentIndex =
            BlocProvider.of<MyCardsCubit>(context).currentPageIndex;
        return Row(
          children: List.generate(
            3,
            (i) => Padding(
              padding: EdgeInsets.symmetric(horizontal: i == 1 ? 8 : 0),
              child: CustomDotIndicator(
                isActive: i == currentIndex ? true : false,
              ),
            ),
          ),
        );
      },
    );
  }
}
