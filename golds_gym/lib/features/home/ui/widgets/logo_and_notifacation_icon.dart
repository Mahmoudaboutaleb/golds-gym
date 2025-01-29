import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:golds_gym/core/routing/routes.dart';
import 'package:golds_gym/core/widgets/notifacation_icon_alarm.dart';

class LogoAndNotofationIcon extends StatelessWidget {
  const LogoAndNotofationIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/images/logo_home_screen.png',
              width: 69.72.w,
              height: 69.72.h,
            ),
            SizedBox(
              width: 4.92.w,
            ),
            Column(
              children: [
                Image.asset(
                  "assets/images/elite_text.png",
                  width: 47.93.w,
                  height: 22.85.h,
                ),
                Image.asset(
                  "assets/images/san_stefano_text.png",
                  width: 45.56.w,
                  height: 5.33.h,
                ),
              ],
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, Routes.classesScreen);
          },
          child: NotifacationIconAlarm(),
        ),
      ],
    );
  }
}
