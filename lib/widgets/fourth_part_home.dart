
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_ux_design/constants/colors.dart';
import 'package:ui_ux_design/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ui_ux_design/widgets/teamwork_item.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FourthPartHome extends StatefulWidget {
  const FourthPartHome({super.key});

  @override
  State<FourthPartHome> createState() => _FourthPartHomeState();
}

class _FourthPartHomeState extends State<FourthPartHome> {
  int? currentSelected;
  List<String> teamImg = [
    'assets/images/sara.png',
    'assets/images/ahmed.png',
    'assets/images/aisha.png',
  ];
  List<String> teamName = ['Sarah Ahmed', 'Ahmed Hassan', 'Aisha Mahmoud'];
  List<String> teamJob = [
    'Architectural Engineer - 32',
    'Civil Engineer - 38',
    'Civil Engineer - 29'
  ];
  List<String> descrebtion = [
    '“Designing spaces that leave a lasting impact is my driving force.”',
    '“Building a better tomorrow requires a solid foundation today.”',
    '“In the realm of construction, safety and innovation go hand in hand.”'
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        height: 300.h,
        width: width,
        // color: Colors.cyan,
        padding: EdgeInsets.fromLTRB(5.h, 5.h, 5.h, 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomText(
            txt: "Team work ",
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
          Divider(
            color: Colors.black,
            thickness: 3.0,
            endIndent: 190.h,
          ),
          // SizedBox(
          //   height: 15.h,
          // ),
          CarouselSlider.builder(
            itemBuilder: (BuildContext context, int index, int pageViewIndex) {
              return TeamworkItem(
                teamImg: teamImg[index],
                name: teamName[index],
                job: teamJob[index],
                describtion: descrebtion[index],
                color: currentSelected == index
                    ? AppColors.fontColor
                    : AppColors.fontColor.withOpacity(0.5.h),
              );
            },
            itemCount: teamImg.length,
            options: CarouselOptions(
              height: 240.h,
              aspectRatio: 16 / 9,
              viewportFraction: 0.5.h,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.4,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                setState(() {
                  currentSelected = index;
                });
              },
            ),
          ),
        ]));
  }
}
