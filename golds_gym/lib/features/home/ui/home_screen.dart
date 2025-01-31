import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:golds_gym/core/themes/styles.dart';
import 'package:golds_gym/features/home/ui/widgets/events_and_offer_listview.dart';
import 'package:golds_gym/features/home/ui/widgets/grid_list_view.dart';
import 'package:golds_gym/features/home/ui/widgets/list_view_card_image.dart';
import 'package:golds_gym/features/home/ui/widgets/logo_and_notifacation_icon.dart';
import 'package:golds_gym/features/home/ui/widgets/news_list_view.dart';
import 'package:golds_gym/features/home/ui/widgets/rich_text_home_widget.dart';
import 'package:golds_gym/features/home/ui/widgets/title_and_view_all_text.dart';
import 'package:golds_gym/features/home/ui/widgets/upcoming_classes_listview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<bool> _onWillPop(BuildContext context) async {
    final shouldExit = await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Exit App'),
          content: Text('Do you want to exit the app?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: Text('No'),
            ),
            TextButton(
              onPressed: () {
                SystemNavigator.pop();
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    );

    return shouldExit ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onWillPop(context),
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 17.w, right: 17.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 55.h),
                    LogoAndNotofationIcon(),
                    SizedBox(height: 21.28.h),
                    RichTextHomeWidget(),
                    // SizedBox(height: 16.h),
                    // RunnerIconAndDistance(),
                    SizedBox(height: 20.h),
                    ListViewCardImages(),
                    SizedBox(height: 20.h),
                    Container(
                      height: 77,
                      width: 395,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color(0xFFFFc80b).withOpacity(0.15),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/svg/rating_recycle.svg"),
                            SizedBox(width: 13.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Current Capacity",
                                  style: Styles.font18whiteWeight400,
                                ),
                                Text(
                                  "GOLDS GYM%",
                                  style: Styles.font10White70Weight400,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 24.h),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff252122),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff131011),
                      blurRadius: 40,
                      spreadRadius: 0,
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 21, right: 21, top: 27),
                  child: Column(
                    children: [
                      TitleAndViewAllText(
                        leftText: "Upcoming Classes",
                        rightText: "View All",
                      ),
                      SizedBox(height: 24.h),
                      UpComingClassesListView(),
                      SizedBox(height: 24.h),
                      TitleAndViewAllText(
                        leftText: "Events & offers",
                        rightText: "View All",
                      ),
                      SizedBox(height: 14.h),
                      EventsAndOfferListView(),
                      SizedBox(height: 24.h),
                      TitleAndViewAllText(
                        leftText: "News",
                        rightText: "View All",
                      ),
                      SizedBox(height: 14.h),
                      NewsListView(),
                      SizedBox(height: 24.h),
                      TitleAndViewAllText(
                        leftText: "gallery",
                        rightText: "View All",
                      ),
                      SizedBox(height: 14.h),
                      GalleryListView(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
