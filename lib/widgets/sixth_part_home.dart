import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_ux_design/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SixthPartHome extends StatelessWidget {
  const SixthPartHome({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 410.h,
      width: width,
      // color: Colors.cyan,
      padding: EdgeInsets.fromLTRB(5.h, 5.h, 5.h, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
      children: [
        CustomText(
          txt: "Future Work",
          fontSize: 15.sp,
          fontWeight: FontWeight.bold,
        ),
        Divider(
          color: Colors.black,
          thickness: 3.0,
          endIndent: 200.h,
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Image.asset("assets/images/Rectangle27.png",fit: BoxFit.fill,height: 350.h,)),
            SizedBox(width: 10.w,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(txt: "SkyNova Tower",fontSize: 20.sp,fontWeight: FontWeight.bold,fontFamily: 'Roboto Slab',),
                SizedBox(height: 8.h,),
                Container(
                  width: 150.w,
                  height: 240.h,
                  // color: Colors.blueGrey,
                  child: CustomText(txt: "SkyNova Tower is a visionary architectural marvel that transcends the boundaries of modern design and sustainable living. Soaring high above the skyline, SkyNova is more than just a tower; it's a symbol of the future.",
                  fontSize: 15.sp,),
                ),
                Image.asset("assets/images/Group40.png",fit: BoxFit.fill,height: 90.h,),
              ],
            )
          ],
        )
      ]),
    );
  }
}
