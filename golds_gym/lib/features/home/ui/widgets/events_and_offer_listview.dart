import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:golds_gym/core/themes/colors.dart';
import 'package:golds_gym/core/themes/styles.dart';

class EventsAndOfferListView extends StatelessWidget {
  const EventsAndOfferListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> eventsAndOfferImages = [
      "assets/images/Events_offers/Events_offers1.png",
      "assets/images/Events_offers/Events_offers2.png",
      "assets/images/Events_offers/Events_offers3.png",
    ];
    List<String> eventsOrOfferText = [
      "Offer",
      "Event",
      "Event",
    ];
    List<String> eventsAndOfferTitles = [
      "Membership Discount 20% on the six month package",
      "Celebrate Client Success - Full day event",
      "Fitness Trainer Workshop",
    ];

    return SingleChildScrollView(
      child: Column(
        children: List.generate(eventsAndOfferImages.length, (index) {
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
                Image.asset(
                  eventsAndOfferImages[index],
                  width: 120.w,
                  height: 104.h,
                  fit: BoxFit.fill,
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 16.h),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.w, vertical: 4.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: eventsOrOfferText[index] == "Event"
                              ? ColorsManager.primaryColor
                              : const Color(0xFFE92E25),
                        ),
                        child: Text(
                          eventsOrOfferText[index],
                          style: Styles.font12WhiteWeight500.copyWith(
                            color: eventsOrOfferText[index] == "Event"
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 11.h),
                      Text(
                        eventsAndOfferTitles[index],
                        maxLines: 2,
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
