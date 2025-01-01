import 'package:flutter/material.dart';

class ColorsManager {
  static const Color primaryColor = Color(0xFFFFF200);
  static const LinearGradient scaffoldBackgroundColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF231F20),
      Color.fromRGBO(35, 31, 32, 0),
    ],
  );
}
