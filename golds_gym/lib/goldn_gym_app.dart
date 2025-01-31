import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:golds_gym/core/routing/app_router.dart';
import 'package:golds_gym/core/routing/routes.dart';
import 'package:golds_gym/core/themes/colors.dart';

class GoldsGymApp extends StatelessWidget {
  const GoldsGymApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Color(0xFF131011).withOpacity(.2),
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Color(0xFF272325),
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
    return ScreenUtilInit(
        // designSize: const Size(428, 699),
        designSize: ScreenUtil.defaultSize,
        minTextAdapt: true,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'GoldsGym',
          theme: ThemeData(
            fontFamily: "NeoSansArabic",
            primaryColor: ColorsManager.primaryColor,
            scaffoldBackgroundColor: Color(0xFF231F20),
          ),
          onGenerateRoute: appRouter.onGenerateRoute,
          initialRoute: Routes.onBoardingScreen,
        ));
  }
}
