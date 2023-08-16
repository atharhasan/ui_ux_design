import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_ux_design/constants/colors.dart';
import 'package:ui_ux_design/constants/strings.dart';

class SendText extends StatelessWidget {
  const SendText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 300.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.h),
        color: AppColors.textFieldColor,
        border: Border.all(color: Colors.grey.shade500),
      ),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: "Write your question",
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15.h),
            suffixIcon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, contactUsTwo);
                },
                icon: Icon(
                  Icons.send,
                  color: AppColors.fontColor,
                ))),
        style: TextStyle(color: Colors.grey.shade50),
      ),
    );
  }
}
