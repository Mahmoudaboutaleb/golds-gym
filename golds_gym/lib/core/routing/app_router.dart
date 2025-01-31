import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:golds_gym/core/routing/routes.dart';
import 'package:golds_gym/features/classes/ui/classes_screen.dart';
import 'package:golds_gym/features/home/ui/home_screen.dart';
import 'package:golds_gym/features/login/logic/login_cubit.dart';
import 'package:golds_gym/features/login/ui/login_screen.dart';
import 'package:golds_gym/features/more_screen.dart';
import 'package:golds_gym/features/navigation_bottom_bar_screen.dart';
import 'package:golds_gym/features/onboarding_screen/onboarding_screen.dart';
import 'package:golds_gym/features/profile/profile_screen.dart';
import 'package:golds_gym/features/register/ui/register_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (context) => OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => LoginCubit(),
                  child: LoginScreen(),
                ));
      case Routes.registerScreen:
        return MaterialPageRoute(builder: (context) => RegisterScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case Routes.classesScreen:
        return MaterialPageRoute(builder: (context) => ClassesScreen());
      case Routes.navigationBottomBarScreen:
        return MaterialPageRoute(
            builder: (context) => NavigationBottomBarScreen());
      case Routes.profileScreen:
        return MaterialPageRoute(builder: (context) => ProfileScreen());
      case Routes.moreScreen:
        return MaterialPageRoute(builder: (context) => MoreScreen());

      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                  body: Center(
                    child: Text('Page not found${settings.name}'),
                  ),
                ));
    }
  }
}
