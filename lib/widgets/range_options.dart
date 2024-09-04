import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_images.dart';
import '../utils/styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
    required this.padding,
  });

  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Color(0xffF1F1F1),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Monthly',
            style: Styles.styleMedium16(context),
          ),
          const SizedBox(
            width: 18,
          ),
          SvgPicture.asset(Assets.imagesArrowDown),
        ],
      ),
    );
  }
}
