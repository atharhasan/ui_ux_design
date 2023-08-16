
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_ux_design/widgets/custom_container.dart';
import 'package:ui_ux_design/widgets/custom_text.dart';

class SecondPartHome extends StatelessWidget {
   SecondPartHome({super.key});
  

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 360.h,
      width: width,
      // color: Colors.cyan,
      padding: EdgeInsets.fromLTRB(10.h, 10.h, 10.h, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(txt: "About us",fontSize: 15.sp,fontWeight: FontWeight.bold,),
          Divider(color: Colors.black, thickness: 3.0,endIndent: 210.h,),
          SizedBox(height: 10.h,),
          Row(
            children: [
              Image.asset("assets/images/Rectangle16.png",fit: BoxFit.fill,height: 300.h ,width: 112.w,),
              SizedBox(width: 8.w,),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      width: 170.w,
                      height: 230.h,
                      // color: Colors.amberAccent,
                    
                      child:const CustomText(txt: "Desoky Industrial Constructions Company is specialized in the field of industrial construction and infrastructure. Established in 2005, the company has been committed to delivering the highest levels of quality and innovation in the construction industry. The company possesses a team of experienced engineers and technicians capable of executing diverse and complex projects.")),
                    SizedBox(height: 15.h,),
                    Row(
                      children: [
                       const CustomContainer(txt: "200", txt2: "Engineers"),
                        SizedBox(width: 2.w,),
                       const CustomContainer(txt: "1500", txt2: "Engineers"),
                        SizedBox(width: 3.w,),
                       const CustomContainer(txt: "150", txt2: "Residential\n project"),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
