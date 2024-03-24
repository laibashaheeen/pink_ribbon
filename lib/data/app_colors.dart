import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppColors {
  static Color kPrimary = const Color(0xFFFF69B4);
  static Color kAppBarPink = const Color(0xFFFA94C7);
  static Color kWhite = const Color(0xFFFFFFFF);
  static Color kBlack = const Color(0xFF000000);
  static Color kAppBarGrey = const Color(0xFFCCCCCC);
  static Color kGrey = const Color.fromARGB(255, 162, 149, 158);
  static Color kLightGrey = const Color.fromARGB(255, 249, 246, 247);

  static const defaultOverlay = SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
    // systemNavigationBarColor: Colors.transparent,
    // systemNavigationBarDividerColor: Colors.transparent,
    // systemNavigationBarIconBrightness: Brightness.dark
  );
}
