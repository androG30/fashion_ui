//Dart Import:
import 'dart:async';

//Material Import:
import 'package:flutter/material.dart';

//Package Import:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:outfiter_fashion_ui/widget/intro/intro.dart';
import 'package:outfiter_fashion_ui/widget/screen/screen.dart';

//Project Import:
import '../../module/theme.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  FutureOr<void> _initState(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 1),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Intro()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Screen(
      padding: EdgeInsets.zero,
      initState: _initState,
      createSafeArea: false,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: primaryColor,
        alignment: Alignment.center,
        child: RotatedBox(
          quarterTurns: 1,
          child: RichText(
            text: TextSpan(
              text: 'Excentric',
              style: TextStyle(
                fontSize: 40.sp,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
