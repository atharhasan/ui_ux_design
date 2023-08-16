import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_ux_design/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FifthPartHome extends StatelessWidget {
  const FifthPartHome({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 150.h,
      width: width,
      // color: Colors.cyan,
      padding: EdgeInsets.fromLTRB(5.h, 10.h, 5.h, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(txt: "Collaborations",fontSize: 15.sp,fontWeight: FontWeight.bold,),
          Divider(color: Colors.black, thickness: 3.0,endIndent: 180.h,),
          SizedBox(height: 10.h,),
          Row(
           children: [
            Expanded(child: Image.asset("assets/images/othmanLogo.png",fit: BoxFit.fill,)),
            SizedBox(width: 3.w,),
            Expanded(child: Image.asset("assets/images/Construction-Logo1.png",fit: BoxFit.fill,)),
            SizedBox(width: 3.w,),
            Expanded(child: Image.asset("assets/images/Orascom.png",fit: BoxFit.fill,)),
            SizedBox(width: 3.w,),
            Expanded(child: Image.asset("assets/images/logo.png",fit: BoxFit.fill,)),
           ],
          ),
        ],
      ),
    );
  }
}