import 'package:flutter/cupertino.dart';
import 'package:golds_gym/core/themes/styles.dart';

class RichTextHomeWidget extends StatelessWidget {
  const RichTextHomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "Hello, ",
            style: Styles.font24whiteWeight500,
          ),
          TextSpan(text: "Mohamed", style: Styles.font24yellowWeight500),
        ],
      ),
    );
  }
}
