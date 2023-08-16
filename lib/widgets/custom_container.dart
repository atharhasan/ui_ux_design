import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_ux_design/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_ux_design/widgets/custom_text.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.txt, required this.txt2});
  final String txt;
  final String txt2;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 55.h,
        width: 65.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.h),
          color: AppColors.fontColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          CustomText(txt: txt,txtColor: Colors.white,),
          SizedBox(height: 3.h,),
          CustomText(txt: txt2,txtColor: Colors.white,fontSize: 8.sp,),
          ]),
      ),
    );
  }
}
