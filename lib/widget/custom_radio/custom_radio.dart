//Flutter Import:
import 'package:flutter/material.dart';

//Project Import:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/state_manager.dart';
import 'package:outfiter_fashion_ui/interface/value.dart' as opt;

import '../../module/theme.dart';

class CustomRadio extends StatelessWidget {
  final String? title;
  final List<opt.Value> values;
  final RxString selection = "".obs;

  CustomRadio({
    Key? key,
    required this.values,
    this.title,
  }) : super(key: key);

  _handleChangeSelection(opt.Value value) {
    return (){
      selection.value = value.value;
    };
  }

  Widget _buildRadioOptions(BuildContext context, opt.Value value) {
    final selected = value.value == selection.value;
    return InkWell(
      onTap: _handleChangeSelection(value),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
        margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
        decoration: BoxDecoration(
          color: selected ? accentColor : Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.all(
            Radius.circular(20.w),
          ),
        ),
        child: Text(
          value.name,
          textScaleFactor: 1.0,
          style: TextStyle(
            fontFamily: "Smithen-Script",
            fontSize: 12.sp,
            letterSpacing: 0.5.sp,
            fontWeight: FontWeight.w500,
            color: selected ? Colors.white : primaryColor,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: title != null,
          child: Text(
            title!,
            textScaleFactor: 1.0,
            style: TextStyle(
              fontFamily: "Smithen-Script",
              fontSize: 12.sp,
              letterSpacing: 0.5.sp,
              fontWeight: FontWeight.w500,
              color: primaryColor,
            ),
          ),
        ),
        SizedBox(height: 15.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (final value in values)
              Obx(
                () => _buildRadioOptions(context, value),
              ),
          ],
        ),
      ],
    );
  }
}
