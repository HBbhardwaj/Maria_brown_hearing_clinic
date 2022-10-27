

import 'package:flutter/material.dart';

class CommonTextView extends StatelessWidget{
  String text;
  FontWeight? fontWeight;
  double? fontSize;
  Color textColor;
  TextAlign textAlign;
  FontStyle fontStyle;


  CommonTextView({required this.text,
  this.fontWeight,
  this.fontSize,
    this.fontStyle = FontStyle.normal,
    this.textAlign = TextAlign.start,
  this.textColor =  Colors.black});



  @override
  Widget build(BuildContext context){
    return Text(
      text,
      textAlign: textAlign,
       style: TextStyle(
         fontWeight: fontWeight,
         fontSize: fontSize,
         color: textColor,
         fontStyle: fontStyle
       ),
    );
  }
}