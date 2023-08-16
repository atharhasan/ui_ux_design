import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_ux_design/constants/colors.dart';
import 'package:ui_ux_design/widgets/custom_text.dart';

class FinalPartHome extends StatelessWidget {
  const FinalPartHome({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 200.h,
      width: width,
      padding: EdgeInsets.all(10.h),
      color: AppColors.fontColor,
      child: Row(
        children: [
          CustomText(
            txt: "Eldesoky",
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
            txtColor: Colors.white,
          ),
          SizedBox(
            width: 15.w,
          ),
          Expanded(
            child: Container(
              width: width / 3,
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    txt: "Call us",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    txtColor: Colors.white,
                  ),
                  Container(
                    width: 30.w,
                    height: 2, // Thickness
                    color: Colors.white,
                  ),
                  SizedBox(height: 15.h,),
                  Row(
                    children: [
                    const  Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      CustomText(
                        txt: "01201234567",
                        txtColor: Colors.white,
                        fontSize: 12.sp,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  CustomText(
                    txt: "Email us",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    txtColor: Colors.white,
                  ),
                  Container(
                    width: 45.w,
                    height: 2, // Thickness
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                     const Icon(
                        Icons.mail,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      CustomText(
                        txt: "info@desoky_constructs.com",
                        txtColor: Colors.white,
                        fontSize: 10.sp,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/icons-linkedin.png",
                height: 30.h,
              ),
              SizedBox(
                height: 10.h,
              ),
              Image.asset(
                "assets/images/Instagram.png",
                height: 30.h,
              ),
              SizedBox(
                height: 10.h,
              ),
              Image.asset(
                "assets/images/Facebook.png",
                height: 30.h,
              ),
            ],
          )
        ],
      ),
    );
  }
}
