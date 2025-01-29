import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:golds_gym/core/themes/colors.dart';
import 'package:golds_gym/core/themes/styles.dart';

class RunnerIconAndDistance extends StatelessWidget {
  const RunnerIconAndDistance({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(
        children: [
          Image.asset("assets/images/runner_logo_home.png"),
          SizedBox(
            width: 1.w,
          ),
          Text(
            "You walked 1 hour 47 minutes today",
            style: Styles.font14BlackWeight400
                .copyWith(color: Color(0xffffffff), fontSize: 12.7.sp),
          )
        ],
      ),
      Text(
        "Change Goal",
        style: Styles.font14BlackWeight400
            .copyWith(color: ColorsManager.primaryColor, fontSize: 12.7.sp),
      ),
    ]);
  }
}
