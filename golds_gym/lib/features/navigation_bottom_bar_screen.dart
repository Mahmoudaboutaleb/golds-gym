import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:golds_gym/core/themes/colors.dart';
import 'package:golds_gym/features/home/ui/home_screen.dart';
import 'package:golds_gym/features/classes/ui/classes_screen.dart';
import 'package:golds_gym/features/more_screen.dart';
import 'package:golds_gym/features/profile/profile_screen.dart';

class NavigationBottomBarScreen extends StatefulWidget {
  const NavigationBottomBarScreen({super.key});

  @override
  State<NavigationBottomBarScreen> createState() =>
      _NavigationBottomBarScreenState();
}

class _NavigationBottomBarScreenState extends State<NavigationBottomBarScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    ClassesScreen(),
    ProfileScreen(),
    MoreScreen(),
  ];

  void _handleIndexChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _screens,
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
          child: Container(
            height: 75.h,
            decoration: BoxDecoration(
              color: Color(0xFF332D2F),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: BottomNavigationBar(
                currentIndex: _selectedIndex,
                selectedLabelStyle: TextStyle(
                  fontSize: 12.sp,
                  color: ColorsManager.primaryColor,
                ),
                selectedItemColor:
                    ColorsManager.primaryColor, // اللون الأصفر عند التحديد
                unselectedItemColor:
                    Colors.grey, // اللون الرمادي للعناصر غير المحددة
                unselectedLabelStyle: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.grey,
                ),
                elevation: 0,
                type: BottomNavigationBarType.fixed,
                showUnselectedLabels: true, // عرض النص للعناصر غير المحددة
                backgroundColor: Colors.transparent, // لجعل الخلفية شفافة
                onTap: _handleIndexChanged,
                enableFeedback: false, // تعطيل الاهتزاز/التأثير عند الضغط
                mouseCursor: SystemMouseCursors.basic, // تعطيل تأثير المؤشر
                items: [
                  // Home
                  BottomNavigationBarItem(
                    icon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 23.w,
                          height: 23.h,
                          child: SvgPicture.asset(
                            "assets/svg/navigation_bottom_bar/home.svg",
                            colorFilter: ColorFilter.mode(
                              _selectedIndex == 0
                                  ? ColorsManager.primaryColor
                                  : Colors.grey,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                        SizedBox(
                            height: 4.h), // مسافة 6 بكسل بين الأيقونة والنص
                      ],
                    ),
                    label: 'Home',
                  ),
                  // Classes
                  BottomNavigationBarItem(
                    icon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 23.w,
                          height: 23.h,
                          child: SvgPicture.asset(
                            "assets/svg/navigation_bottom_bar/classes.svg",
                            colorFilter: ColorFilter.mode(
                              _selectedIndex == 1
                                  ? ColorsManager.primaryColor
                                  : Colors.grey,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                        SizedBox(
                            height: 4.h), // مسافة 6 بكسل بين الأيقونة والنص
                      ],
                    ),
                    label: 'Classes',
                  ),
                  // Profile
                  BottomNavigationBarItem(
                    icon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 23.w,
                          height: 23.h,
                          child: SvgPicture.asset(
                            "assets/svg/navigation_bottom_bar/profile.svg",
                            colorFilter: ColorFilter.mode(
                              _selectedIndex == 2
                                  ? ColorsManager.primaryColor
                                  : Colors.grey,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                        SizedBox(height: 4.h),
                      ],
                    ),
                    label: 'Profile',
                  ),
                  // More
                  BottomNavigationBarItem(
                    icon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 23.h,
                          width: 23.w,
                          child: SvgPicture.asset(
                            "assets/svg/navigation_bottom_bar/more.svg",
                            colorFilter: ColorFilter.mode(
                              _selectedIndex == 3
                                  ? ColorsManager.primaryColor
                                  : Colors.grey,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                        SizedBox(height: 3.h),
                      ],
                    ),
                    label: 'More',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
