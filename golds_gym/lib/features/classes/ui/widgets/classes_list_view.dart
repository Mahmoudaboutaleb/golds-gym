import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:golds_gym/core/themes/styles.dart';

class ClassesListView extends StatelessWidget {
  const ClassesListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> classesImages = [
      "assets/images/classes/classes-image1.png",
      "assets/images/classes/classes-image2.png",
      "assets/images/classes/classes-image3.png",
      "assets/images/classes/classes-image4.png",
      "assets/images/classes/classes-image1.png",
      "assets/images/classes/classes-image2.png",
      "assets/images/classes/classes-image3.png",
      "assets/images/classes/classes-image4.png",
    ];
    List<String> classesTitles = ["Zumba", "TRX", "i choreo", "spinning"];
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(20.0),
            child: Container(
              padding: EdgeInsets.zero,
              height: 125.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(children: [
                Image.asset(
                  classesImages[index],
                  width: 120.w,
                  height: 138.h,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: 16.w,
                ),
                Column(
                  children: [
                    Text(
                      classesTitles[index],
                      style: Styles.font16whiteWeight700,
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      height: 40.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                          color: Color(0xFF231F20),
                          border: Border.all(
                            color: Color(0xFF231F20),
                          )),
                    )
                  ],
                )
              ]),
            ),
          );
        },
      ),
    );
  }
}
