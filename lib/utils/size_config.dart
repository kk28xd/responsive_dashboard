import 'package:flutter/material.dart';

class SizeConfig {
  static const double mobileLayoutBreakPoint = 600;
  static const double tabletLayoutBreakPoint = 1000;

  static late double width, height;

  static init(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
  }
}
