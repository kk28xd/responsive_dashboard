import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';

import '../utils/size_config.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.color, required this.title});

  final Color? color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 0,
      height: 62,
      onPressed: () {},
      color: color ?? const Color(0xff4EB7F2),
      child: Padding(
        padding: EdgeInsets.all(getResponsivePadding(context, padding: 20)),
        child: FittedBox(
          child: Text(title,
              style: color == null
                  ? Styles.styleSemiBold18(context)
                      .copyWith(color: const Color(0xffFFFFFF))
                  : Styles.styleSemiBold18(context)),
        ),
      ),
    );
  }
}

double getResponsivePadding(BuildContext context, {required double padding}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = padding * scaleFactor;
  double lowerLimit = padding * .8;
  double upperLimit = padding * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;
  if (width < SizeConfig.mobileLayoutBreakPoint) {
    return width / 500;
  } else if (width < SizeConfig.tabletLayoutBreakPoint) {
    return width / 900;
  } else {
    return width / 1536;
  }
}
