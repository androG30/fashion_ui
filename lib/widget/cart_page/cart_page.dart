//Material Imports:
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:outfiter_fashion_ui/widget/filter/bottom_background.dart';

//Project Import:
import '../../module/theme.dart';
import '../screen/screen.dart';
import 'cart_item.dart';
import 'cart_top_background.dart';
import 'checkout.dart';
import 'header.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Screen(
      padding: EdgeInsets.zero,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: CustomPaint(
              size: Size(double.infinity, 200.h),
              painter: CartTopBackground(),
              child: const Header(),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomPaint(
              size: Size(double.infinity, 280.h),
              painter: BottomBackground(),
              child: const Checkout(),
            ),
          ),
          Positioned(
            top: 140.h,
            bottom: 110.h,
            right: 30.w,
            left: 30.w,
            child: const CartItem(),
          ),
        ],
      ),
    );
  }
}
