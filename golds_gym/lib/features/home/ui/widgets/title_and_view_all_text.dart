import 'package:flutter/material.dart';
import 'package:golds_gym/core/themes/styles.dart';

class TitleAndViewAllText extends StatelessWidget {
  final String leftText;
  final String rightText;
  const TitleAndViewAllText({
    super.key,
    required this.leftText,
    required this.rightText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftText,
          style: Styles.font18WhiteWeight500,
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            rightText,
            style: Styles.font14YellowWeight400,
          ),
        )
      ],
    );
  }
}
