import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:golds_gym/core/themes/styles.dart';

class UpComingClassesListView extends StatelessWidget {
  const UpComingClassesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 92.h,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
              2,
              (index) => Padding(
                    padding: EdgeInsets.only(right: 8.w),
                    child: Container(
                      width: 290.w,
                      height: 92.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xFFFFFFFF).withOpacity(0.03),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff000000).withOpacity(0.12),
                              offset: const Offset(0, 3),
                              blurRadius: 60,
                              spreadRadius: 0,
                            ),
                          ]),
                      child: Row(
                        children: [
                          Image.asset(
                              "assets/images/Upcoming Classes/Upcoming Classes image1.png"),
                          SizedBox(width: 12.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 13.h),
                              Text("Coach. Mohamed Khaled",
                                  style: Styles.font12White70Weight300
                                      .copyWith(fontSize: 11)),
                              SizedBox(height: 1.h),
                              Text("Body Combat",
                                  style: Styles.font16whiteWeight500),
                              SizedBox(height: 13.h),
                              Row(children: [
                                SvgPicture.asset("assets/svg/clock_icon.svg"),
                                SizedBox(width: 5.w),
                                Text("Today 6:00 PM",
                                    style: Styles.font12White70Weight300),
                              ]),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
        ),
      ),
    );
  }
}
