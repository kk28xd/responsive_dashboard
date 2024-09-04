import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/styles.dart';

import '../utils/app_images.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Quick Invoice',
          style: Styles.styleSemiBold20(context),
        ),
        Container(
          height: 48,
          width: 48,
          decoration: const ShapeDecoration(
              shape: OvalBorder(), color: Color(0xffFAFAFA)),
          child: Center(
            child: SvgPicture.asset(
              Assets.imagesAdd,
            ),
          ),
        ),
      ],
    );
  }
}
