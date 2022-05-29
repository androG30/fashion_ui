//Flutter Import
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:outfiter_fashion_ui/module/theme.dart';
import 'package:outfiter_fashion_ui/widget/cart_page/item.dart';

final items =[
  Item(
    name: "Short sleeve\norganic top",
    color: Colors.purple.withOpacity(0.5),
    price: "1,000",
    quantity: "1",
    size: "M",
  ),
  Item(
    name: "Crew neck\nsweatshirt",
    color: Colors.blue.withOpacity(0.5),
    price: "1,000",
    quantity: "1",
    size: "L",
  ),
  Item(
    name: "Check Shirt",
    color: Colors.deepPurpleAccent.withOpacity(0.5),
    price: "1,000",
    quantity: "1",
    size: "L",
  ),
  Item(
    name: "Short sleeve",
    color: Colors.yellow.withOpacity(0.5),
    price: "1,000",
    quantity: "1",
    size: "XL",
  ),
];

class CartItem extends StatelessWidget {
  const CartItem({Key? key}) : super(key: key);

  _buildItem(BuildContext context, Item item) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 5.h,horizontal: 5.w),
          width: 100.w,
          height: 80.h,
          decoration: BoxDecoration(
            color: item.color,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10.h),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Size: ${item.size}",
              textScaleFactor: 1.0,
              style: TextStyle(
                fontFamily: "Smithen-Script",
                fontSize: 12.sp,
                letterSpacing: 0.5.sp,
                fontWeight: FontWeight.w500,
                color: primaryColor,
              ),
            ),
            SizedBox(height:5.h),
            Text(
              item.name,
              textScaleFactor: 1.0,
              style: TextStyle(
                fontFamily: "Smithen-Script",
                fontSize: 14.sp,
                letterSpacing: 0.5.sp,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),
            SizedBox(height:5.h),
            Text(
              item.price,
              textScaleFactor: 1.0,
              style: TextStyle(
                fontFamily: "Smithen-Script",
                fontSize: 14.sp,
                letterSpacing: 0.5.sp,
                fontWeight: FontWeight.bold,
                color: accentColor,
              ),
            ),
          ],
        ),
        Container(
          width: 30.w,
          height: 30.h,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: primaryColor,
          ),
          child: Text(
            "x${item.quantity}",
            textScaleFactor: 1.0,
            style: TextStyle(
              fontFamily: "Smithen-Script",
              fontSize: 12.sp,
              letterSpacing: 0.5.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300.h,
      child: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < items.length; i++) _buildItem(context,items[i]),
          ],
        ),
      ),
    );
  }
}
