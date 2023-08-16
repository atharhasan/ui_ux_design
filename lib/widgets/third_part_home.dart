import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_ux_design/widgets/image_card.dart';


// ignore: must_be_immutable
class ThirdPartHome extends StatelessWidget {
  ThirdPartHome({super.key,});

  List<String> catecoryImg = [
    'assets/images/Component1.png',
    'assets/images/Component2.png',
    'assets/images/Component3.png',
    'assets/images/Component4.png'
  ];


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 210.h,
      width: width,
      // color: Colors.blueGrey,
      padding: EdgeInsets.fromLTRB(5.h, 8.h, 5.h, 0),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemCount: catecoryImg.length,
          itemBuilder: (context, index) {
            return ImageCard(image: catecoryImg[index]);
          }),
    );
  }
}
