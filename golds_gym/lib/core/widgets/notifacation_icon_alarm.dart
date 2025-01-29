import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotifacationIconAlarm extends StatelessWidget {
  const NotifacationIconAlarm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 49,
      height: 49,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Color(0xFF2D2D2D),
          width: 1,
        ),
      ),
      child: Center(
        child: Stack(children: [
          Image.asset("assets/images/notification_icon.png",
              width: 21.71.w, height: 24.5.h),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
