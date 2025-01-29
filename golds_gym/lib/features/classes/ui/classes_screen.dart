import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:golds_gym/features/classes/ui/widgets/classes_list_view.dart';
import 'package:golds_gym/features/classes/ui/widgets/title_and_notication_icon.dart';
import 'package:golds_gym/features/classes/ui/widgets/filter_tab_and_calender_widgets.dart';

class ClassesScreen extends StatefulWidget {
  const ClassesScreen({super.key});

  @override
  State<ClassesScreen> createState() => _ClassesScreenState();
}

class _ClassesScreenState extends State<ClassesScreen> {
  String selectedFilter = 'By Date';
  List<String> places = ["I-Energy Mohandsein", "I-Energy Zayed"];
  String? selectedPlace = "Select Branch";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF131011),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClassesTitleAndNoticationIcon(),
            SizedBox(height: 20.h),
            Container(
              width: 428.w,
              height: 802.h,
              decoration: BoxDecoration(
                color: Color(0xFF252122),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r),
                ),
              ),
              child: Column(
                children: [FilterTabAndCalenderWidgets(), ClassesListView()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
