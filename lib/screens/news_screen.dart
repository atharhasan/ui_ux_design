import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_ux_design/widgets/custom_text.dart';
import 'package:ui_ux_design/widgets/news_images.dart';
import 'package:ui_ux_design/widgets/scond_part_news.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20.h, 50.h, 20.h, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
          txt: "Latest News",
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
        ),
        Divider(
          color: Colors.black,
          thickness: 3.0,
          endIndent: 190.h,
        ),
        SizedBox(
          height: 10.h,
        ),
        NewsImages(),
        SizedBox(
          height: 5.h,
        ),
        SecondPartNews(),

            ],
          )
        ),
      ),
    );
  }
}