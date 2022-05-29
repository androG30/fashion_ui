//Flutter Import:
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:outfiter_fashion_ui/interface/value.dart';
import 'package:outfiter_fashion_ui/widget/custom_radio/custom_radio.dart';

//Project Import:
import '../../module/theme.dart';

final genders = [
  Value("For Men", "men"),
  Value("For Women", "women"),
  Value("Both", "both"),
];

final outfits = [
  Value("Sport", "sport"),
  Value("Smart Casual", "smart_casual"),
  Value("Casual", "casual"),
];

final size = [
  Value("S", "s"),
  Value("M", "m"),
  Value("XL", "xl"),
  Value("XXL", "xxl"),
];

class Filters extends StatelessWidget {
  const Filters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "OUTFIT GENERATOR",
          textScaleFactor: 1.0,
          style: TextStyle(
            fontFamily: "Smithen-Script",
            fontSize: 12.sp,
            letterSpacing: 0.5.sp,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 10.h),
        Text(
          "Configure account",
          textScaleFactor: 1.0,
          style: TextStyle(
            fontFamily: "Smithen-Script",
            fontSize: 24.sp,
            letterSpacing: 0.5.sp,
            fontWeight: FontWeight.bold,
            color: primaryColor,
          ),
        ),
        SizedBox(height: 35.h),
        CustomRadio(
          title: "What outfit do you want to see?",
          values: genders,
        ),
        SizedBox(height: 35.h),
        CustomRadio(
          title: "What type of outfit you usually wear?",
          values: outfits,
        ),
        SizedBox(height: 35.h),
        CustomRadio(
          title: "What is your size?",
          values: size,
        ),
      ],
    );
  }
}
