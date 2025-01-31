import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GalleryListView extends StatelessWidget {
  const GalleryListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> gallerySvg = [
      "assets/images/gallery/gallery1.png",
      "assets/images/gallery/gallery2.png",
      "assets/images/gallery/gallery3.png",
      "assets/images/gallery/gallery4.png",
      "assets/images/gallery/gallery5.png",
      "assets/images/gallery/gallery6.png",
    ];

    return SizedBox(
      height: 205.h,
      child: GridView.builder(
        padding: EdgeInsets.zero,
        itemCount: gallerySvg.length,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 14,
          mainAxisSpacing: 14,
        ),
        itemBuilder: (context, index) {
          return Image.asset(
            gallerySvg[index],
            height: 120.h,
            width: 120.w,
          );
        },
      ),
    );
  }
}
