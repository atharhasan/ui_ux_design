import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_ux_design/constants/colors.dart';
import 'package:ui_ux_design/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstPartHome extends StatelessWidget {
  const FirstPartHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                children: [
                  Container(
                    height: 250.h,
                    width: 175.w,
                    padding: EdgeInsets.fromLTRB(5.h, 8.h, 5.h, 8.h),
                    // color: Colors.amber,
                    child: Column(children: [
                      CustomText(txt: "Constructing the future just the way you envision it",fontSize: 24.sp,
                      fontFamily: 'Roboto Slab', txtColor: AppColors.fontColor,fontWeight: FontWeight.bold,),
                      SizedBox(height: 7.h,),
                      CustomText(txt: "Discover a world where craftsmanship meets innovation – welcome to a construction experience that transforms dreams into reality.",
                      fontSize: 12.sp,fontFamily: 'Roboto Slab',fontWeight: FontWeight.bold,)
                    ],),
                  ),
                  Container(
                     height: 250.h,
                    width: 140.w,
                    // color: Colors.teal,
                    // padding: EdgeInsets.all(10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/Rectangle12.png',width: 68.w,height: 250.h,fit: BoxFit.fill,),
                        Column(
                          children: [
                             Image.asset('assets/images/Rectangle14.png',height: 123.h,width: 68.w,fit: BoxFit.fill,),
                             SizedBox(height: 4.h,),
                             Image.asset('assets/images/Rectangle15.png',height: 123.h,width: 68.w,fit: BoxFit.fill,),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              );
  }
}