import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_ux_design/constants/colors.dart';
import 'package:ui_ux_design/constants/strings.dart';
import 'package:ui_ux_design/screens/contact_us_screen.dart';
import 'package:ui_ux_design/screens/gallery_screen.dart';
import 'package:ui_ux_design/screens/home_screen.dart';
import 'package:ui_ux_design/screens/news_screen.dart';
import 'package:ui_ux_design/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, 
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
      body:  TabBarView(
          children: [
            HomeScreen(),
            NewsScreen(),
            GalleryScreen(),
            ContactUsScreen()
          ],
        ),
      )
    );
  }
}