import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_ux_design/widgets/image_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class GalleryScreen extends StatelessWidget {
   GalleryScreen({super.key});

  List<String> catecoryImg = [
    'assets/images/Component1.png',
    'assets/images/Component2.png',
    'assets/images/Component3.png',
    'assets/images/Component4.png',
    'assets/images/Rectangle20.png',
    'assets/images/Front.png'
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 400.h,
          width: width,
          // color: Colors.blueGrey,
          padding: EdgeInsets.fromLTRB(20.h, 50.h, 20.h, 0),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: catecoryImg.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:  EdgeInsets.all(3.h),
                  child: ImageCard(image: catecoryImg[index]),
                );
              }),
        ),
      ),
    );
  }
}