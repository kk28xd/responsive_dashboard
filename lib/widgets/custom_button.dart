import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';

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
        padding: const EdgeInsets.all(20),
        child: Text(title,
            style: color == null
                ? Styles.styleSemiBold18(context)
                    .copyWith(color: const Color(0xffFFFFFF))
                : Styles.styleSemiBold18(context)),
      ),
    );
  }
}
