import 'package:flutter/material.dart';
import 'package:golds_gym/core/themes/colors.dart';
import 'package:golds_gym/core/themes/styles.dart';

class GoldsgymButtonWidget extends StatelessWidget {
  const GoldsgymButtonWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 362,
      height: 40,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  WidgetStatePropertyAll(ColorsManager.primaryColor)),
          child: Text(
            title,
            style: Styles.font14BlackWeight400,
          ),
          onPressed: () {}),
    );
  }
}
