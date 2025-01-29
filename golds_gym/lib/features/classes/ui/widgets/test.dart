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
    return Column(
      children: [
        // Header with Month and Year
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Color(0xFF2E2B2C)),
              top: BorderSide(color: Color(0xFF2E2B2C)),
            ),
          ),
          padding: EdgeInsets.symmetric(vertical: 8.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                DateFormat('MMMM').format(selectedDate),
                style: Styles.font12WhiteWeight400
                    .copyWith(fontSize: 14.sp), // زيادة حجم الخط
              ),
              SizedBox(width: 8.w),
              Text(
                DateFormat('yyyy').format(selectedDate),
                style: Styles.font12WhiteWeight400
                    .copyWith(fontSize: 14.sp), // زيادة حجم الخط
              ),
            ],
          ),
        ),
        // Days of the Week
        Container(
          padding: EdgeInsets.symmetric(vertical: 8.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('SAT',
                  style: Styles.font12WhiteWeight400.copyWith(fontSize: 12.sp)),
              Text('SUN',
                  style: Styles.font12WhiteWeight400.copyWith(fontSize: 12.sp)),
              Text('MON',
                  style: Styles.font12WhiteWeight400.copyWith(fontSize: 12.sp)),
              Text('TUE',
                  style: Styles.font12WhiteWeight400.copyWith(fontSize: 12.sp)),
              Text('WED',
                  style: Styles.font12WhiteWeight400.copyWith(fontSize: 12.sp)),
              Text('THU',
                  style: Styles.font12WhiteWeight400.copyWith(fontSize: 12.sp)),
              Text('FRI',
                  style: Styles.font12WhiteWeight400.copyWith(fontSize: 12.sp)),
            ],
          ),
        ),
        // Date Timeline
        Container(
          height: 60.h, // تقليل الارتفاع
          decoration: BoxDecoration(
            color: Color(0xFF1C1819),
            border: Border.all(
              color: Color(0xFF2E2B2C),
            ),
          ),
          child: EasyDateTimeLine(
            headerProps: EasyHeaderProps(showHeader: false),
            initialDate: selectedDate,
            onDateChange: onDateChange,
            dayProps: EasyDayProps(
              width: 40.w, // تقليل عرض العنصر
              height: 40.h, // تقليل ارتفاع العنصر
              todayStyle: DayStyle(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: ColorsManager.primaryColor.withOpacity(0.2),
                  ),
                ),
              ),
              todayStrStyle: TextStyle(
                fontSize: 12.sp, // حجم الخط
                color: Color(0xFF979797),
                fontWeight: FontWeight.w400,
                height: 1.5, // تقليل المسافة بين الأسطر
              ),
              todayNumStyle: TextStyle(
                fontSize: 12.sp, // حجم الخط
                color: Color(0xFF979797),
                fontWeight: FontWeight.w400,
                height: 1.5, // تقليل المسافة بين الأسطر
              ),
              inactiveDayStyle: DayStyle(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                ),
                dayStrStyle: Styles.font12WhiteWeight400.copyWith(
                  height: 1.5,
                  color: Color(0xFF979797),
                  fontSize: 12.sp, // حجم الخط
                ),
                dayNumStyle: Styles.font12WhiteWeight400.copyWith(
                  height: 1.5,
                  color: Color(0xFFFFFFFF),
                  fontSize: 12.sp, // حجم الخط
                ),
              ),
              dayStructure: DayStructure.dayStrDayNum,
              activeDayStyle: DayStyle(
                dayStrStyle: Styles.font12YellowWeight400.copyWith(
                  height: 1.5,
                  fontSize: 12.sp, // حجم الخط
                ),
                dayNumStyle: Styles.font12YellowWeight400.copyWith(
                  height: 1.5,
                  fontSize: 12.sp, // حجم الخط
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorsManager.primaryColor,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
