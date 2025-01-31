import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:golds_gym/features/classes/ui/widgets/calender_screen_widget.dart';
import 'package:golds_gym/features/classes/ui/widgets/classes_form.dart';
import 'package:golds_gym/features/classes/ui/widgets/filter_tab.dart';
import 'package:golds_gym/features/classes/ui/widgets/instructor_form.dart';

class FilterTabAndCalenderWidgets extends StatefulWidget {
  const FilterTabAndCalenderWidgets({super.key});

  @override
  State<FilterTabAndCalenderWidgets> createState() =>
      _FilterTabAndCalenderWidgetsState();
}

class _FilterTabAndCalenderWidgetsState
    extends State<FilterTabAndCalenderWidgets> {
  String selectedFilter = 'By Date';
  DateTime selectedDate = DateTime.now(); // التاريخ المحدد

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 52.h,
          padding: EdgeInsets.zero,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FilterTab(
                title: 'By Date',
                selectedFilter: selectedFilter,
                onTap: (title) {
                  setState(() {
                    selectedFilter = title;
                  });
                },
              ),
              FilterTab(
                title: 'By Instructor',
                selectedFilter: selectedFilter,
                onTap: (title) {
                  setState(() {
                    selectedFilter = title;
                  });
                },
              ),
              FilterTab(
                title: 'By Class',
                selectedFilter: selectedFilter,
                onTap: (title) {
                  setState(() {
                    selectedFilter = title;
                  });
                },
              ),
            ],
          ),
        ),
        if (selectedFilter == 'By Date')
          CalendarWidget(
            selectedDate: selectedDate,
            onDateChange: (date) {
              setState(() {
                selectedDate = date;
              });
            },
          )
        else if (selectedFilter == 'By Instructor')
          InstructorView()
        else if (selectedFilter == 'By Class')
          ClassView(),
      ],
    );
  }
}
