import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_ux_design/widgets/custom_text.dart';

class SecondPartNews extends StatelessWidget {
  const SecondPartNews({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 300.h,
      width: width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 170.h,
                  width: width / 2,
                  padding: EdgeInsets.all(8.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/title1.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomText(
                        txt: "News Title",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        txtColor: Colors.white,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomText(
                        txt:
                            "Lorem ipsum dolor sit amet consectetur. Purus velit elementum consequat nunc adipiscing morbi nulla potenti.",
                        fontSize: 10.sp,
                        txtColor: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 120.h,
                  width: width / 2,
                  padding: EdgeInsets.all(8.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/title2.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomText(
                        txt: "News Title",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        txtColor: Colors.white,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomText(
                        txt:
                            "Lorem ipsum dolor sit amet consectetur. Purus velit elementum consequat nunc",
                        fontSize: 11.sp,
                        txtColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Container(
            height: 300.h,
            width: width / 2.5,
            padding: EdgeInsets.all(10.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                image: AssetImage("assets/images/title3.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomText(
                        txt: "News Title",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        txtColor: Colors.white,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomText(
                        txt:
                            "Lorem ipsum dolor sit amet consectetur. Purus velit elementum consequat nunc adipiscing morbi nulla potenti.",
                        fontSize: 10.sp,
                        txtColor: Colors.white,
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
