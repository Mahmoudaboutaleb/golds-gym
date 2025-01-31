import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:golds_gym/core/routing/routes.dart';
import 'package:golds_gym/core/themes/styles.dart';
import 'package:golds_gym/core/widgets/notifacation_icon_alarm.dart';

class ClassesTitleAndNoticationIcon extends StatelessWidget {
  const ClassesTitleAndNoticationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 17.0.w, top: 52.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Padding(
            padding: EdgeInsets.only(left: 60.w),
            child: Text("Classes",
                style: Styles.font18whiteWeight400.copyWith(
                  letterSpacing: 1,
                  fontFamily: "Roboto",
                )),
          ),
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routes.homeScreen);
              },
              child: NotifacationIconAlarm()),
        ],
      ),
    );
  }
}
