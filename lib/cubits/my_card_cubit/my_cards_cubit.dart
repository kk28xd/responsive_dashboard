import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dashboard/cubits/my_card_cubit/my_cards_states.dart';

class MyCardsCubit extends Cubit<MyCardsStates> {
  MyCardsCubit() : super(MyCardsInitial());
  int currentPageIndex = 1;

  void updateIndex(int index) {
    currentPageIndex = index;
    emit(MyCardsUpdate());
  }
}
