import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_ux_design/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_ux_design/widgets/date_view.dart';
import 'package:ui_ux_design/widgets/fifth_part_home.dart';
import 'package:ui_ux_design/widgets/final_part_home.dart';
import 'package:ui_ux_design/widgets/first_part_home.dart';
import 'package:ui_ux_design/widgets/fourth_part_home.dart';
import 'package:ui_ux_design/widgets/second_part_home.dart';
import 'package:ui_ux_design/widgets/sixth_part_home.dart';
import 'package:ui_ux_design/widgets/third_part_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20.h, 50.h, 20.h, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const FirstPartHome(),
              SizedBox(height: 50.h,),
              SecondPartHome(),
              SizedBox(height: 50.h,),
              ThirdPartHome(),
              DateView(),
              Row(
                children: [
                  CustomText(txt: "More ",fontSize: 20.sp, fontWeight: FontWeight.bold,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_double_arrow_right,size: 30.h,))
                ],
              ),
              SizedBox(height: 50.h,),
              const FourthPartHome(),
              SizedBox(height: 20.h,),
             const FifthPartHome(),
              SizedBox(height: 30.h,),
              const SixthPartHome(),
              SizedBox(height: 50.h,),
             const FinalPartHome(),
            ],
          ),
        ),
      ),
    );
  }
}