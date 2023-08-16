import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_ux_design/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DateItem extends StatefulWidget {
  const DateItem({super.key, required this.txt});
  final String txt;

  @override
  State<DateItem> createState() => _DateItemState();
}

class _DateItemState extends State<DateItem> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(8.h),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                if (isClicked == false) {
                  isClicked = true;
                } else {
                  isClicked = false;
                }
              });
            },
            child: CustomText(
              txt: "${widget.txt}",
              fontSize: 13.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Center(
            child: isClicked
                ? Icon(Icons.keyboard_arrow_up)
                : Icon(
                    Icons.brightness_1,
                    size: 5.h,
                  ),
          ),
        ],
      ),
    );
  }
}
