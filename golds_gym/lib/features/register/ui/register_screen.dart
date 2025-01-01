import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:golds_gym/core/helpers/extensions.dart';
import 'package:golds_gym/core/routing/routes.dart';
import 'package:golds_gym/core/themes/colors.dart';
import 'package:golds_gym/core/themes/styles.dart';
import 'package:golds_gym/core/widgets/goldsgym_button_widget.dart';
import 'package:golds_gym/core/widgets/goldsgym_text_form_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF231F20),
                    Color(0xFF231F20).withOpacity(0.4),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                  stops: [0.0, 1],
                ),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Color(0xFF231F20),
                      Color(0xFF231F20).withOpacity(0.0),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    stops: [0.14, 0.4]),
                image: DecorationImage(
                    image: AssetImage('assets/images/golds_gym_background.png'),
                    fit: BoxFit.fill),
              ),
            ),
            Positioned(
              top: 75.h,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Image.asset(
                      "assets/images/golds_gym_logo.png",
                      width: 120.w,
                      height: 190.h,
                    ),
                  ),
                  SizedBox(height: 40.h),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF252122),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: Offset(0, -5),
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          SizedBox(height: 24.h),
                          Text(
                            "Recover Password",
                            style: Styles.font28YellowWeight700,
                          ),
                          SizedBox(height: 24.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 29.w),
                            child: Text(
                              "Enter Your WhatsApp, And You’ll Get A Reset Password Link Sent To You.",
                              style: Styles.font14GreyWeight400.copyWith(
                                  height: 1.7.h,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 28.h),
                          GoldsgymTextFormWidget(
                            hintText: "WhatsApp Number",
                          ),
                          SizedBox(height: 16.h),
                          GoldsgymButtonWidget(title: "Send"),
                          SizedBox(height: 56.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  context.pushNamed(Routes.loginScreen);
                                },
                                child: Image.asset(
                                  "assets/images/left-arrow.png",
                                  width: 18.h,
                                  height: 18.h,
                                  color: ColorsManager.primaryColor,
                                ),
                              ),
                              SizedBox(width: 4.5.w),
                              TextButton(
                                style: ButtonStyle(
                                  padding: WidgetStateProperty.all(
                                    EdgeInsets.zero,
                                  ),
                                ),
                                onPressed: () {
                                  context.pushNamed(Routes.loginScreen);
                                },
                                child: Text(
                                  "back to login",
                                  style: Styles.font13YellowWeight400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 50.h),
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
    );
  }
}
