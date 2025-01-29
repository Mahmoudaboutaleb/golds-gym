import 'package:flutter/material.dart';
import 'package:golds_gym/core/helpers/extensions.dart';
import 'package:golds_gym/core/routing/routes.dart';
import 'package:golds_gym/core/themes/colors.dart';
import 'package:golds_gym/core/themes/styles.dart';
// import 'package:golds_gym/features/classes/ui/classes_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final prefs = await SharedPreferences.getInstance();
        if (prefs.getBool('isLoggedIn') == true) {
          context.pushNamed(Routes.classesScreen);
        } else {
          context.pushNamed(Routes.loginScreen);
        }
      },
      child: Scaffold(
          body: SafeArea(
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              Stack(children: [
                Container(
                  foregroundDecoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Color(0xFF231F20),
                          Color(0xFF231F20).withOpacity(0.0),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        stops: [0.14, 0.4]),
                  ),
                  child: Image.asset('assets/images/golds_gym_background.png'),
                ),
                Positioned(
                    left: 0,
                    right: 0,
                    top: 260,
                    child: Image.asset(
                      "assets/images/golds_gym_logo.png",
                      width: 146,
                      height: 230,
                    )),
              ]),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 50),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "If you think lifting is dangerous, try being weak. ",
                        style: Styles.font15White70Weight400,
                      ),
                      TextSpan(
                          text: "Being weak is dangerous!",
                          style:
                              Styles.font15whiteWeight700.copyWith(height: 2)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90),
                child: Container(
                  height: 5,
                  width: 247,
                  decoration: BoxDecoration(
                    color: ColorsManager.primaryColor,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
