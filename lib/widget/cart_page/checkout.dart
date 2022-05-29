//Flutter Import:
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//Project Import:
import '../../module/theme.dart';

class Checkout extends StatelessWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 280.h,
      child: Container(
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.only(
          bottom: 20.h,
          left: 15.w,
          right: 15.w,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Total Payment:",
                  textScaleFactor: 1.0,
                  style: TextStyle(
                    fontFamily: "Smithen-Script",
                    fontSize: 12.sp,
                    letterSpacing: 0.5.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withOpacity(0.4),
                  ),
                ),
                SizedBox(height: 3.h),
                Text(
                  "Rs. 4,000",
                  textScaleFactor: 1.0,
                  style: TextStyle(
                    fontFamily: "Smithen-Script",
                    fontSize: 18.sp,
                    letterSpacing: 0.5.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 30.w,vertical: 10.h),
                ),
                foregroundColor:
                MaterialStateProperty.all<Color>(accentColor),
                backgroundColor: MaterialStateProperty.all<Color>(
                  accentColor,
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
              onPressed: (){},
              child: Text(
                "Go to checkOut",
                textScaleFactor: 1.0,
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
