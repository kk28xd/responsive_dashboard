import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.allExpensesItemModel,
      this.imgBackGround,
      this.imgColor});

  final AllExpensesItemModel allExpensesItemModel;
  final Color? imgBackGround, imgColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                //padding: const EdgeInsets.all(14),
                height: 60,
                width: 60,
                decoration: ShapeDecoration(
                    shape: const OvalBorder(),
                    color: imgBackGround ?? const Color(0xffFAFAFA)),
                child: Center(
                  child: SvgPicture.asset(
                    allExpensesItemModel.image,
                    colorFilter: ColorFilter.mode(
                        imgColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        Transform.rotate(
          angle: -pi / 2,
          child: SvgPicture.asset(
            Assets.imagesArrowDown,
            colorFilter: ColorFilter.mode(
                imgColor != null ? Colors.white : const Color(0xff064061),
                BlendMode.srcIn),
          ),
        ),
      ],
    );
  }
}
