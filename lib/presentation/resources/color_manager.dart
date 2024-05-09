import 'package:flutter/material.dart';

class ColorManager {
  static const Color primary = Color(0xff061D8A);
  static const Color darkBlue = Color(0xff0034A3);
  static const Color white = Color(0xffEBEDEE);
  static const Color blue = Color(0xff0047FF);
  static const Color darkGray = Color(0xff525252);
  static const Color gray = Color(0x7f333333);
  static const Color lightGray = Color(0xff9E9E9E);
  static const Color borderText = Color(0xff304654);
  static const Color primaryGradient = Color(0xff2B9DD7);
  static const Color secondaryGradient = Color(0xff061D8A);
  // new colors
  //#17A6FF  #2B9DD7  #061D8A
    static const Color lightBlue = Color(0xff17A6FF);
  static const Color darkPrimary = Color(0xffd17d11);
  static const Color lightPrimary = Color(0xCCd17d11); // color with 80% opacity
  static const Color yellow = Color(0xffFAFF00);
  static const Color grey1 = Color(0xff707070);
  static const Color grey2 = Color(0xff797979);
  static const Color black = Color(0xff000000);

  static const Color firstGradient = Color(0xff999999);
  static const Color secondGradient = Color(0xff333333);
    static const Color firstGradient1 = Color(0xff333333);
  static const Color error = Color(0xffe61f34); // red color
//used in semister
  static Decoration backGroundColor2() {
    return const BoxDecoration(
      gradient: LinearGradient(
        colors: [firstGradient, secondGradient],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    );
  }

    static Decoration backGroundColor() {
    return const BoxDecoration(
      gradient: LinearGradient(
        colors: [ secondGradient,firstGradient1],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    );
  }
      static Decoration backGroundColor3() {
    return const BoxDecoration(
      gradient: LinearGradient(
        colors: [ secondGradient,firstGradient1],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    );
  }
}


