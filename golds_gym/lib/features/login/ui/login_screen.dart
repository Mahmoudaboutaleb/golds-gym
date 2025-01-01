import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:golds_gym/core/helpers/extensions.dart';
import 'package:golds_gym/core/routing/routes.dart';
import 'package:golds_gym/core/themes/colors.dart';
import 'package:golds_gym/core/themes/styles.dart';
import 'package:golds_gym/core/widgets/goldsgym_button_widget.dart';
import 'package:golds_gym/core/widgets/goldsgym_text_form_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isSecure = true;
  final formKey = GlobalKey<FormState>();
  List<String> places = ["I-Energy Mohandsein", "I-Energy Zayed"];
  String? selectedPlace = "Select Branch";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFF231F20),
                    const Color(0xFF231F20).withOpacity(0.4),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                  stops: const [0.0, 1],
                ),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFF231F20),
                    const Color(0xFF231F20).withOpacity(0.0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  stops: const [0.14, 0.4],
                ),
                image: const DecorationImage(
                  image: AssetImage('assets/images/golds_gym_background.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: 80.h,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/golds_gym_logo.png",
                    width: 120.w,
                    height: 190.h,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      color: const Color(0xFF252122),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: const Offset(0, -5),
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Form(
                        key: formKey,
                        child: Column(
                          children: [
                            SizedBox(height: 23.h),
                            Text(
                              "Login",
                              style: Styles.font28YellowWeight700,
                            ),
                            SizedBox(height: 23.h),
                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  backgroundColor: Colors.transparent,
                                  builder: (context) {
                                    return Padding(
                                      padding: EdgeInsets.only(bottom: 70.h),
                                      child: Center(
                                        child: Container(
                                          width: 280.w,
                                          padding: EdgeInsets.symmetric(
                                              vertical: 20.h, horizontal: 16.w),
                                          decoration: BoxDecoration(
                                            color: const Color(0xFF252122),
                                            borderRadius:
                                                BorderRadius.circular(20.r),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.5),
                                                blurRadius: 10,
                                                offset: const Offset(0, 4),
                                              ),
                                            ],
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                "Select Branch",
                                                style: TextStyle(
                                                  fontSize: 18.sp,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                              SizedBox(height: 16.h),
                                              ...places.map(
                                                (place) => GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      selectedPlace = place;
                                                    });
                                                    Navigator.pop(context);
                                                  },
                                                  child: Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 10.h),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 12.h,
                                                            horizontal: 16.w),
                                                    decoration: BoxDecoration(
                                                      color:
                                                          selectedPlace == place
                                                              ? const Color(
                                                                  0xFF393636)
                                                              : const Color(
                                                                  0xFF312E2F),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              47.r),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          place,
                                                          style: TextStyle(
                                                            fontSize: 14.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Color(
                                                                0xFF9D9D9D),
                                                          ),
                                                        ),
                                                        const Icon(
                                                          Icons.chevron_right,
                                                          color:
                                                              Color(0xFF9D9D9D),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(47),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 26),
                                  width: 362.w,
                                  height: 40.h,
                                  decoration: const BoxDecoration(
                                    color: Color(0XFF312E2F),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        selectedPlace ?? "Select Branch",
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFFFFFFFF),
                                        ),
                                      ),
                                      const RotatedBox(
                                        quarterTurns: 1,
                                        child: Icon(
                                          Icons.chevron_right,
                                          color: Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 19.h),
                            GoldsgymTextFormWidget(
                              hintText: "UserName",
                              controller: userNameController,
                            ),
                            SizedBox(height: 15.h),
                            GoldsgymTextFormWidget(
                              isSecure: isSecure,
                              controller: passwordController,
                              hintText: "Password",
                              suffixIcons: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isSecure = !isSecure;
                                  });
                                },
                                icon: isSecure
                                    ? const Icon(
                                        Icons.visibility_off_outlined,
                                        color: Color(0XFFFFFFFF),
                                        size: 16,
                                      )
                                    : const Icon(
                                        Icons.visibility,
                                        color: Color(0XFFFFFFFF),
                                        size: 16,
                                      ),
                              ),
                            ),
                            SizedBox(height: 15.h),
                            const GoldsgymButtonWidget(title: "Login"),
                            SizedBox(height: 13.h),
                            TextButton(
                              child: Text(
                                "Forgot Password?",
                                style: Styles.font13YellowWeight400.copyWith(
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 1,
                                  decorationColor: ColorsManager.primaryColor,
                                ),
                              ),
                              onPressed: () {
                                context.pushNamed(Routes.registerScreen);
                              },
                            ),
                            SizedBox(height: 32.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/golds_small_icon.png",
                                  width: 22,
                                  color: const Color(0xFF9D9D9D),
                                ),
                                const SizedBox(width: 2),
                                Text(
                                  "Login As Guest",
                                  style: Styles.font14GreyWeight400,
                                ),
                              ],
                            ),
                          ],
                        ),
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
