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

    return Column(
      children: List.generate(
        classesImages.length,
        (index) => Padding(
          padding:
              EdgeInsets.only(right: 10.w, left: 20.w, top: 10.h, bottom: 10.h),
          child: Container(
            height: 130.h,
            decoration: BoxDecoration(
              color: Color(0xFF252122),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.r),
                    bottomLeft: Radius.circular(8.r),
                  ),
                  child: Image.asset(
                    classesImages[index % classesImages.length],
                    width: 115.w,
                    height: 130.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 40.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8.r),
                          ),
                          color: Colors.transparent,
                          border: Border(
                            right: BorderSide(
                              color: Color(0xFF000000).withOpacity(0.12),
                            ),
                            bottom: BorderSide(
                              color: Color(0xFF000000).withOpacity(0.12),
                            ),
                            top: BorderSide(
                              color: Color(0xFF000000).withOpacity(0.12),
                            ),
                          ),
                        ),
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.0.w),
                          child: Text(
                            classesTitles[index % classesTitles.length],
                            style: Styles.font16whiteWeight700.copyWith(),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 11.h,
                        ),
                        height: 90.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFF231F20),
                          border: Border.all(
                            color: Color(0xFF231F20),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.0.w, right: 10.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Trainer',
                                          style: Styles.font12GreyWeight400),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Text(
                                        'Frian',
                                        style: Styles.font14WhiteWeight400
                                            .copyWith(),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('Time',
                                          style: Styles.font12GreyWeight400),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Text(
                                        '9:30 AM',
                                        style: Styles.font14WhiteWeight400
                                            .copyWith(),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('Duration',
                                          style: Styles.font12GreyWeight400),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Text(
                                        '60 Mins',
                                        style: Styles.font14WhiteWeight400
                                            .copyWith(),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 9.h,
                              ),
                              Text(
                                "14 Spots left",
                                style: Styles.font14WhiteWeight400,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
