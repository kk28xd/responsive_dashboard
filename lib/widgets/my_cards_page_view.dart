import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dashboard/cubits/my_card_cubit/my_cards_cubit.dart';
import 'package:responsive_dashboard/cubits/my_card_cubit/my_cards_states.dart';
import 'package:responsive_dashboard/widgets/my_card.dart';

class MyCardsPageView extends StatefulWidget {
  const MyCardsPageView({super.key});

  @override
  State<MyCardsPageView> createState() => _MyCardsPageViewState();
}

class _MyCardsPageViewState extends State<MyCardsPageView> {
  final controller = PageController();
  int index = 0;

  @override
  void initState() {
    controller.addListener(() {
      index = controller.page!.round();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyCardsCubit, MyCardsStates>(
      builder: (context, state) {
        BlocProvider.of<MyCardsCubit>(context).updateIndex(index);
        return ExpandablePageView(
          controller: controller,
          scrollDirection: Axis.horizontal,
          children: List.generate(
            3,
            (index) => const MyCard(),
          ),
        );
      },
    );
  }
}

// return AspectRatio(
//   aspectRatio: 420 / 215,
//   child: PageView.builder(
//     scrollDirection: Axis.horizontal,
//     itemCount: 3,
//     itemBuilder: (context, index) {
//       return const MyCard();
//     },
//   ),
// );

// final pageController = PageController(initialPage: BlocProvider.of<MyCardsCubit>(context).currentPageIndex);
// while (pageController.page!.toInt() > BlocProvider.of<MyCardsCubit>(context).currentPageIndex) {
//   pageController.previousPage(duration: const Duration(milliseconds: 200), curve: Curves.linear);
// }
// while (pageController.page!.toInt() < BlocProvider.of<MyCardsCubit>(context).currentPageIndex) {
//   pageController.nextPage(duration: const Duration(milliseconds: 200), curve: Curves.linear);
// }
// pageController = PageController(initialPage: BlocProvider.of<MyCardsCubit>(context).currentPageIndex);
// // pageController.addListener(() {
// //   pageController.page.toInt() = ;
// // });
// BlocProvider.of<MyCardsCubit>(context)
//     .updateIndex(PageController().page!.toInt());

// controller: PageController(
//     initialPage:
//         BlocProvider.of<MyCardsCubit>(context).currentPageIndex),
//controller: pageController,
