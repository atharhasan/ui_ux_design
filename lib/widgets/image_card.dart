import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_ux_design/widgets/custom_text.dart';
import 'package:flip_card/flip_card.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({super.key, required this.image,});
  final String image;

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      fill: Fill.fillBack,
      direction: FlipDirection.HORIZONTAL, 
      side: CardSide.FRONT,
      flipOnTouch: true,
      front: Container(
        height: 200.h,
        width: 100.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.h),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fill,
          ),
        ),
      ),
      back: Container(
        height: 160.h,
        width: 100.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.h),
        ),
        child: CustomText(txt: 'Lorem ipsum dolor sit amet consectetur. Consectetur eleifend gravida erat orci consequat mauris quam dignissim. Et varius felis facilisis tortor eu tempus pretium. Tristique morbi facilisis mauris quis felis purus erat blandit elementum. Ullamcorper consequat lacus at nisl eget sed justo elit. Diam in interdum morbi augue in lectus sed. At commodo ultrices mauris suspendisse non nibh odio ipsum quam. Sed felis at egestas consequat ridiculus ultricies quis cursus. Sit nunc nec tellus magna vitae ligula proin malesuada maecenas. Sed tellus turpis id fermentum euismod posuere sit.',
        fontSize: 10.sp,),
      ),
    );
  }
}
