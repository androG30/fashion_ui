//Flutter Import:
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outfiter_fashion_ui/module/theme.dart';

import '../widget/adaptive/adaptive.dart';
import '../widget/splash/splash.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  String get appTitle => "ui_fashion";

  ThemeData _buildThemeData(BuildContext context) {
    return ThemeData(
      textTheme: GoogleFonts.robotoTextTheme(
        Theme
            .of(context)
            .textTheme
            .copyWith(
          subtitle1: TextStyle(
            color: titleColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      primaryColor: primaryColor,
      accentColor: accentColor,
      errorColor: errorColor,
      highlightColor: accentColor,
      canvasColor: accentColor,
      shadowColor: const Color(0xff8a92de).withOpacity(0.1),
      dividerColor: const Color(0xff778088),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(
          color: accentColor,
          fontSize: 19.sp,
          fontWeight: FontWeight.w500,
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(style: BorderStyle.solid, color: accentColor),
        ),
      ),
      fontFamily: GoogleFonts
          .roboto()
          .fontFamily,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: ZoomPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Adaptive(
      builder: (context, widget) =>
          MaterialApp(
            title: appTitle,
            theme: _buildThemeData(context),
            home: const Scaffold(
              backgroundColor: Colors.white,
              body: Splash(),
            ),
          ),
    );
  }
}
