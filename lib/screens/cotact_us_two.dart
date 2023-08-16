import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_ux_design/constants/colors.dart';
import 'package:ui_ux_design/widgets/custom_text.dart';
import 'package:ui_ux_design/widgets/send_text.dart';

class ContactUsTwo extends StatelessWidget {
  const ContactUsTwo({super.key});

  @override
  Widget build(BuildContext context) {
     double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
         appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.h),
          child: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomText(txt: 'Eldesoky', fontSize: 22.sp, fontFamily: 'Roboto Slab', 
                txtColor: AppColors.fontColor,fontWeight: FontWeight.bold,),
                SizedBox(width: 8.h,),
              const Expanded(
                 child: TabBar(
                          
                           tabs: 
                         [
                           Tab(text: "Home",),
                           Tab(text: "News",),
                           Tab(text: "Gallery",),
                           Tab(text: "Contact Us",),
                         ],
                         labelColor: Colors.black,
                         indicatorColor: Colors.black,
                         ),
               ),
            
              CustomText(txt: "EN",fontSize: 12.sp,fontWeight: FontWeight.bold,),
              ],
            ),
             backgroundColor: Colors.white,
             automaticallyImplyLeading: false,
          ),
        ),
        body: Container(
          height: 400.h,
            width: width,
            padding: EdgeInsets.fromLTRB(10.h, 60.h, 10.h, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 70.h,
                    width: 250.w,
                    padding: EdgeInsets.all(15.h),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.h),color: Colors.grey.shade300),
                    child: CustomText(txt: "Lorem ipsum dolor sit amet consectetur. Consequat nibh vulputate mattis sed.",
                    fontWeight: FontWeight.bold,),
                  ),
                ),
                SizedBox(height: 10.h,),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 70.h,
                    width: 250.w,
                    padding: EdgeInsets.all(15.h),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.h),color: AppColors.fontColor),
                    child: CustomText(txt: "Lorem ipsum dolor sit amet consectetur. Consequat nibh vulputate mattis sed.",
                    fontWeight: FontWeight.bold,txtColor: Colors.white,),
                  ),
                ),
                SizedBox(height: 80.h,),
    
                SendText(),
              ],
            ),
        ),
      ),
    );
  }
}
