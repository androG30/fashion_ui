//Flutter Import:
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);


  _handleBackButton(BuildContext context) {
    return () {
      Navigator.pop(context);
    };
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: InkWell(
                  onTap: _handleBackButton(context),
                  child: Container(
                    width: 40.w,
                    height: 40.h,
                    decoration:  BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.2),
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      size: 20.w,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15.h),
                alignment: Alignment.center,
                child: SizedBox(
                  child: Text(
                    "SHOPPING CART",
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
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 40.w,
                    height: 40.h,
                    decoration:  BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.2),
                    ),
                    child: Icon(
                      Icons.card_travel,
                      size: 20.w,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15.h),
          Text(
            "4 Items added",
            textScaleFactor: 1.0,
            style: TextStyle(
              fontFamily: "Smithen-Script",
              fontSize: 22.sp,
              letterSpacing: 0.5.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }


}
