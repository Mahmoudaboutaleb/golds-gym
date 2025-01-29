import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewCardImages extends StatelessWidget {
  const ListViewCardImages({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imagesCard = [
      "assets/images/card3.png",
      "assets/images/card2.png",
      "assets/images/card3.png",
    ];

    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 1),
          )
        ],
      ),
      height: 120.h,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagesCard.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Image.asset(
            imagesCard[index],
            fit: BoxFit.cover,
            width: 200,
          ),
        ),
      ),
    );
  }
}
