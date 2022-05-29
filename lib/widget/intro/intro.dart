//Flutter Import:
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:outfiter_fashion_ui/widget/filter/filter_page.dart';

//Project Import:
import '../../module/theme.dart';
import '../screen/screen.dart';
import 'intro_painter.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Screen(
      padding: EdgeInsets.zero,
      child: Container(
        color: secondaryColor,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 25.h),
                child: RotatedBox(
                  quarterTurns: 3,
                  child: RichText(
                    text: TextSpan(
                      text: 'Excentric',
                      style: TextStyle(
                        fontSize: 80.sp,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(double.infinity, 280.h),
                    painter: IntroPainter(),
                  ),
                  Positioned(
                    bottom: 110.h,
                    right: 80.w,
                    child: Text(
                      "Your Style, Your Way",
                      textScaleFactor: 1.0,
                      style: TextStyle(
                        fontFamily: "Smithen-Script",
                        fontSize: 18.sp,
                        letterSpacing: 0.5.sp,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 80.h,
                    right: 30.w,
                    child: Text(
                      "Create your individual & unique style ",
                      textScaleFactor: 1.0,
                      style: TextStyle(
                        fontFamily: "Smithen-Script",
                        fontSize: 14.sp,
                        letterSpacing: 0.5.sp,
                        fontWeight: FontWeight.w500,
                        color: primaryColor,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 60.h,
                    right: 70.w,
                    child: Text(
                      "and look amazing everyday.",
                      textScaleFactor: 1.0,
                      style: TextStyle(
                        fontFamily: "Smithen-Script",
                        fontSize: 14.sp,
                        letterSpacing: 0.5.sp,
                        fontWeight: FontWeight.w500,
                        color: primaryColor,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 15.h,
                    right: 110.w,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 50.w),
                        ),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.grey.withOpacity(0.1),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.w),
                            ),
                            side: BorderSide(
                              color: Colors.grey.withOpacity(0.1),
                            ),
                          ),
                        ),
                      ),
                      onPressed: _handleOnNext(context),
                      child: Text(
                        "Next",
                        textScaleFactor: 1.0,
                        style: TextStyle(
                          fontFamily: "Smithen-Script",
                          fontSize: 14.sp,
                          letterSpacing: 0.5.sp,
                          fontWeight: FontWeight.w500,
                          color: primaryColor,
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

  _handleOnNext(BuildContext context) {
    return () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => FilterPage()),
      );
    };
  }
}
