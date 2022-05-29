//Flutter Import:
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:load_switch/load_switch.dart';

//Project Import:
import '../../module/theme.dart';
import '../cart_page/cart_page.dart';
import 'bottom_background.dart';

class SwipeButton extends StatelessWidget {
  SwipeButton({Key? key}) : super(key: key);

  bool value = false;

  Future<bool> _getFuture() async {
    await Future.delayed(const Duration(seconds: 2));
    return !value;
  }

  _handleOnNext(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CartPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(double.infinity, 280.h),
      painter: BottomBackground(),
      child: SizedBox(
        width: double.infinity,
        height: 280.h,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 60.w),
                margin: EdgeInsets.only(bottom: 20.h),
                child: LoadSwitch(
                  value: value,
                  future: _getFuture,
                  neutralColor: accentColor,
                  falseColor: accentColor,
                  onChange: (v) {
                    value = v;
                    print('Tapping while value is $v');
                    _handleOnNext(context);
                  },
                  onTap: (v) {},
                ),
              ),
            ),
            Positioned(
              bottom: 43,
              left: 1,
              right: 1,
              child: Text(
                "Swipe to continue",
                textScaleFactor: 1.0,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Smithen-Script",
                  fontSize: 12.sp,
                  letterSpacing: 0.5.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
