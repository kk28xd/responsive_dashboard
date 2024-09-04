import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/user_info_listTile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  @override
  Widget build(BuildContext context) {
    // return SizedBox(
    //   height: 72,
    //   child: ListView.builder(
    //     itemCount: list.length,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, i) {
    //       return IntrinsicWidth(
    //           child: UserInfoListTile(listTileModel: list[i]));
    //     },
    //   ),
    // );
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(list.length,
            (index) => IntrinsicWidth(child: UserInfoListTile(listTileModel: list[index]))),
      ),
    );
  }
}

List<UserInfoModel> list = const [
  UserInfoModel(
      image: Assets.imagesFrame,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail'),
  UserInfoModel(
      image: Assets.imagesFrame1,
      title: 'Josua Nunito',
      subtitle: 'Josh Nunito@gmail.com'),
  UserInfoModel(
      image: Assets.imagesFrame,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail'),
];
