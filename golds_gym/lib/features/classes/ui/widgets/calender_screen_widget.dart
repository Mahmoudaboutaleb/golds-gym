import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:golds_gym/core/themes/colors.dart';
import 'package:golds_gym/core/themes/styles.dart';
import 'package:intl/intl.dart';

class CalendarWidget extends StatelessWidget {
  final DateTime selectedDate;
  final Function(DateTime) onDateChange;

  const CalendarWidget({
    super.key,
    required this.selectedDate,
    required this.onDateChange,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xFF131011).withOpacity(.35),
            border: Border(
              bottom: BorderSide(color: Color(0xFF2E2B2C)),
              top: BorderSide(color: Color(0xFF2E2B2C)),
            ),
          ),
          width: 95.w,
          height: 105.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                DateFormat('MMMM').format(selectedDate),
                style: Styles.font12WhiteWeight400,
              ),
              SizedBox(height: 8),
              Text(
                DateFormat('yyyy').format(selectedDate),
                style: Styles.font12WhiteWeight400,
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: 105.h,
            decoration: BoxDecoration(
              color: Color(0xFF1C1819),
              border: Border.all(color: Color(0xFF2E2B2C)),
            ),
            child: Center(
              // توسيط الـ EasyDateTimeLine أفقيًا
              child: EasyDateTimeLine(
                headerProps: EasyHeaderProps(showHeader: false),
                initialDate: selectedDate,
                onDateChange: onDateChange,
                dayProps: EasyDayProps(
                  width: 38.w,
                  height: 64.h,
                  todayStyle: DayStyle(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: ColorsManager.primaryColor.withOpacity(0.2),
                      ),
                    ),
                  ),
                  todayStrStyle: TextStyle(
                    fontSize: 10.sp,
                    color: Color(0xFF979797),
                    fontWeight: FontWeight.w400,
                    height: 2.5.h,
                  ),
                  todayNumStyle: TextStyle(
                    fontSize: 10.sp,
                    color: Color(0xFF979797),
                    fontWeight: FontWeight.w400,
                    height: 2.5.h,
                  ),
                  inactiveDayStyle: DayStyle(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent),
                    ),
                    dayStrStyle: Styles.font12WhiteWeight400.copyWith(
                      height: 2.5.h,
                      color: Color(0xFF979797),
                    ),
                    dayNumStyle: Styles.font12WhiteWeight400.copyWith(
                      height: 2.5.h,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  dayStructure: DayStructure.dayStrDayNum,
                  activeDayStyle: DayStyle(
                    dayStrStyle: Styles.font12YellowWeight400.copyWith(
                      height: 2.5.h,
                    ),
                    dayNumStyle: Styles.font12YellowWeight400.copyWith(
                      height: 2.5.h,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorsManager.primaryColor),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
