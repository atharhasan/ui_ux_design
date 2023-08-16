import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_ux_design/widgets/custom_text.dart';

class NewsImages extends StatefulWidget {
  const NewsImages({super.key});

  @override
  State<NewsImages> createState() => _NewsImagesState();
}

class _NewsImagesState extends State<NewsImages> {
  int? imageSelected;
  List<String> imageList = [
    'assets/images/news1.png',
    'assets/images/news2.png',
    'assets/images/news3.png',
    'assets/images/news4.png',
    'assets/images/news5.png',
    'assets/images/news6.png',
    'assets/images/news7.png',
    'assets/images/news8.png',
    'assets/images/news9.png',
    'assets/images/news10.png'
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 400.h,
      width: width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
           onTap: () {
             setState(() {
                    if (imageSelected == index) {
                  imageSelected = null;
                } else {
                  imageSelected = index;
                }
                });
           },
              child: Stack(
                children: [ 
                  AnimatedContainer(
                    curve: Curves.fastOutSlowIn,
                  duration: Duration(milliseconds: 300),
                  height: 300.h,
                  width: imageSelected == index ? 200.w : 80.w,
                  child: Image.asset(
                    imageList[index],
                    fit: BoxFit.fill,
                  ),
                ),
                if (imageSelected == index)
                Positioned(
                  top: 120.h,
                  left: 20.h,
                  child: Container(
                    height: 200.h,
                    width: 150.w,
                    child: Column(
                      children: [
                        CustomText(txt: "Title News",fontSize: 25.sp,fontWeight: FontWeight.bold,txtColor: Colors.white,),
                        SizedBox(height: 10.h,),
                        CustomText(txt: "Lorem ipsum dolor sit amet consectetur. Purus velit elementum consequat nunc adipiscing morbi nulla potenti.",
                        fontSize: 12.sp,fontWeight: FontWeight.bold,txtColor: Colors.white,),
                      ],
                    ),
                  ))
                ],
              )
              );
        },
      ),
    );
  }
}
