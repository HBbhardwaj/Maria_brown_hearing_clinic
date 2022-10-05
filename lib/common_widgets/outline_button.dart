

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:maria_brown_hearing_clinic/common_widgets/common_text_view.dart';

class CommonOutlineButton extends StatelessWidget{
Function()? onTap;

String buttonText;
Color outlineColor, fontColor;
FontWeight? fontWeight;
double? fontSize, borderRadius, width,height;

CommonOutlineButton({Key? key,
  required this.buttonText,
   this.onTap,
   this.outlineColor = Colors.black,
  this.width ,
  this.height = 50,
  this.fontSize,
  this.fontWeight,
  this.fontColor =  Colors.black,
  this.borderRadius
}) : super(key: key);



  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(onPressed: onTap!,
        style: ButtonStyle(

          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(

                borderRadius: BorderRadius.circular(borderRadius!),
                side: BorderSide(color: outlineColor),
              )
          ),), child: CommonTextView(
          text: buttonText,
          fontWeight: fontWeight,
          fontSize: fontSize,
          textColor: fontColor,
        ),),
    );

  }
}