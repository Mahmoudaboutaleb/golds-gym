import 'package:flutter/material.dart';
import 'package:golds_gym/core/themes/colors.dart';

class GoldsgymTextFormWidget extends StatelessWidget {
  const GoldsgymTextFormWidget(
      {super.key,
      required this.hintText,
      this.isSecure,
      this.controller,
      this.suffixIcons,
      this.hintStyle,
      this.validator});
  final String hintText;
  final TextStyle? hintStyle;
  final bool? isSecure;
  final TextEditingController? controller;
  final Widget? suffixIcons;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      width: 362,
      child: TextFormField(
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
        controller: controller,
        cursorColor: ColorsManager.primaryColor,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 26, vertical: 0),
          filled: true,
          fillColor: Color(0XFF312E2F),
          hintText: hintText,
          hintStyle: hintStyle ??
              TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF9D9D9D),
              ),
          suffixIcon: suffixIcons,
          suffixStyle: TextStyle(color: Color(0XFFFFFFFF)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorsManager.primaryColor),
            borderRadius: BorderRadius.circular(47),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF424242)),
            borderRadius: BorderRadius.circular(47),
          ),
        ),
      ),
    );
  }
}
