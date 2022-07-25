import 'package:flutter/material.dart';

class AppColors {
  static const MaterialColor primarySwatch = MaterialColor(
    0xff3D47A0,
    <int, Color>{
      50: Color.fromRGBO(61, 71, 160, .1),
      100: Color.fromRGBO(61, 71, 160, .2),
      200: Color.fromRGBO(61, 71, 160, .3),
      300: Color.fromRGBO(61, 71, 160, .4),
      400: Color.fromRGBO(61, 71, 160, .5),
      500: Color.fromRGBO(61, 71, 160, .6),
      600: Color.fromRGBO(61, 71, 160, .7),
      700: Color.fromRGBO(61, 71, 160, .8),
      800: Color.fromRGBO(61, 71, 160, .9),
      900: Color.fromRGBO(61, 71, 160, 1),
    },
  );

  static const Color primary = Color(0xff3D47A0);
  static const Color secondary = Color(0xff343C88);
  static const Color accent = Color(0xffF7B54B);
  static const Color grey = Color(0xffCCCCCC);
  static const Color red = Color(0xffF74B4B);
  static const Color white = Color(0xffF0F0F0);
}