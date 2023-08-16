import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_ux_design/widgets/custom_text.dart';

class TeamworkItem extends StatelessWidget {
  const TeamworkItem(
      {super.key,
      required this.teamImg,
      required this.name,
      required this.job,
      required this.describtion, required this.color});
  final String teamImg;
  final String name;
  final String job;
  final String describtion;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: EdgeInsets.only(top: 48),
        padding: EdgeInsets.all(5.h),
        height: 180.h,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              txt: name,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              txtColor: Colors.white,
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomText(
              txt: job,
              fontSize: 13.sp,
              fontWeight: FontWeight.bold,
              txtColor: Colors.white,
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomText(
              txt: describtion,
              fontSize: 10.sp,
              fontWeight: FontWeight.bold,
              txtColor: Colors.white,
            ),
          ],
        ),
      ),
      Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            child: CircleAvatar(
              radius: 38.0,
              backgroundImage: AssetImage(teamImg),
            ),
          )),
    ]);
  }
}
