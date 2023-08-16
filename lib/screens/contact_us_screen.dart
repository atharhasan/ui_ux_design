import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_ux_design/constants/colors.dart';
import 'package:ui_ux_design/constants/strings.dart';
import 'package:ui_ux_design/widgets/custom_text.dart';
import 'package:ui_ux_design/widgets/send_text.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  Widget textColumn(String text1, String text2,BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, contactUsTwo);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              txt: text1,
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              txtColor: AppColors.fontColor,
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 200.h,
              width: 100,
              child: CustomText(
                txt: text2,
                fontSize: 10.sp,
                txtColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 400.h,
          width: width,
          // color: Colors.blueGrey,
          padding: EdgeInsets.fromLTRB(20.h, 60.h, 10.h, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                textColumn("Inquiry", "Lorem ipsum dolor sit amet consectetur.",context),
                textColumn("Price list", "Lorem ipsum dolor sit amet consectetur.",context),
                textColumn("Consulting services", "Lorem ipsum dolor sit amet consectetur.",context),
              ],
            ),
            SizedBox(height: 30.h,),
            SendText(),
          ]),
        ),
      ),
    );
  }
}
