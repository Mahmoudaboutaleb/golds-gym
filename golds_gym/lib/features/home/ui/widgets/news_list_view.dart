import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:golds_gym/core/themes/styles.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> newsImages = [
      "assets/images/News/news_image1.png",
      "assets/images/News/news_image2.png",
      "assets/images/News/news_image3.png",
    ];
    List<String> newsTitle = [
      "Winning awards for participants of body building competition Nov 2021",
      "Workout from home: Pandemic pushes online fitness training into mainstream",
      "Rani Chatterjee turns her makeup room into the gym on the set",
    ];

    return SingleChildScrollView(
      child: Column(
        children: List.generate(newsImages.length, (index) {
          return Container(
            margin: EdgeInsets.only(bottom: 8.h),
            height: 104.h,
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
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                  child: Image.asset(
                    newsImages[index],
                    width: 120.w,
                    height: 104.h,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        newsTitle[index],
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.font14BlackWeight400.copyWith(
                          color: const Color(0xFFF4F4F4),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
