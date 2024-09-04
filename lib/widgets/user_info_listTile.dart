import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.listTileModel});

  final UserInfoModel listTileModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(listTileModel.image),
        title: Text(
          listTileModel.title,
          style: Styles.styleSemiBold16(context),
        ),
        subtitle: Text(
          listTileModel.subtitle,
          style: Styles.styleRegular12(context),
        ),
      ),
    );
  }
}
