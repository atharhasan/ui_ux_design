import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.txt, this.fontSize, this.txtColor, this.fontWeight, this.textAlign,this.textDirection, this.fontFamily, this.wordSpacing});
   final String txt;
   final double? fontSize;
   final Color? txtColor;
   final FontWeight? fontWeight;
   final TextAlign? textAlign;
   final TextDirection? textDirection;
   final String? fontFamily;
   final double? wordSpacing;

  @override
  Widget build(BuildContext context) {
    return Text(txt,style: TextStyle(fontSize: fontSize, color: txtColor ?? Colors.black,
     fontWeight: fontWeight ?? FontWeight.normal,fontFamily: fontFamily, 
     wordSpacing: wordSpacing,
     ),textAlign: textAlign,textDirection: textDirection,);
  }
}