import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: Styles.styleRegular16(context).copyWith(color: const Color(0xffAAAAAA)),
        fillColor: const Color(0xffFAFAFA),
        filled: true,
        border: customBorder(),
        enabledBorder: customBorder(),
        focusedBorder: customBorder(),
      ),
    );
  }

  OutlineInputBorder customBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xffFAFAFA),
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ),
    );
  }
}
