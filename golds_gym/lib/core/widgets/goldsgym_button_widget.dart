import 'package:flutter/material.dart';
import 'package:golds_gym/core/themes/colors.dart';
import 'package:golds_gym/core/themes/styles.dart';

class GoldsgymButtonWidget extends StatelessWidget {
  const GoldsgymButtonWidget(
      {super.key, required this.title, required this.onPressed});
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 362,
      height: 40,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  WidgetStatePropertyAll(ColorsManager.primaryColor)),
          onPressed: onPressed,
          child: Text(
            title,
            style: Styles.font14BlackWeight400,
          )),
    );
  }
}
