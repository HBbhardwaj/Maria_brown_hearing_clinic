

import 'package:flutter/material.dart';

class CommonTextView extends StatelessWidget{
  String text;
  FontWeight? fontWeight;
  double? fontSize;
  Color textColor;

  CommonTextView({required this.text,
  this.fontWeight,
  this.fontSize,
  this.textColor =  Colors.black});



  Widget build(BuildContext context){
    return Text(
      text,
       style: TextStyle(
         fontWeight: fontWeight,
         fontSize: fontSize,
         color: textColor
       ),
    );
  }
}