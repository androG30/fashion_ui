//Flutter Import:
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:outfiter_fashion_ui/widget/filter/filters.dart';
import 'package:outfiter_fashion_ui/widget/filter/swipe_button.dart';
import 'package:outfiter_fashion_ui/widget/screen/screen.dart';

//Project Import:
import 'top_background.dart';

class FilterPage extends StatelessWidget {
  FilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Screen(
      padding: EdgeInsets.zero,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: ClipPath(
              clipper: TopBackground(),
              child: Image.asset("assets/bg_pattern.png"),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SwipeButton(),
          ),
          Positioned(
            top: 110.h,
            bottom: 110.h,
            right: 30.w,
            left: 30.w,
            child: const Filters(),
          ),
        ],
      ),
    );
  }
}
