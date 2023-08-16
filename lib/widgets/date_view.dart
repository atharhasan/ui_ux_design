import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_ux_design/widgets/date_item.dart';

// ignore: must_be_immutable
class DateView extends StatelessWidget {
   DateView({super.key});

  List<int> dateCategory = [2005, 2006, 2007, 2008, 2009, 2010, 2011];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: 51.h,
      width: width,
      padding: EdgeInsets.only(left: 5.h, right: 5.h),
      // color: Colors.amber,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        dragStartBehavior: DragStartBehavior.down,
        itemCount: dateCategory.length,
        itemBuilder: (context, index) {
          return DateItem(txt: "${dateCategory[index]}");
        },
      ),
    );
  }
}
