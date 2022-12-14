import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:maria_brown_hearing_clinic/common_widgets/common_text_view.dart';
import 'package:maria_brown_hearing_clinic/utils/app_font_size.dart';

class DrawerTextOutline extends StatelessWidget {
  String listText;
  Color? backgroundColor, borderColor, textColor;
  String? imageText;
  BoxFit? boxFit;
  Function()? onTap;
  FontWeight? fontWeight;
  double? width, height, borderWidth, borderRadius, imageWidth, imageHeight, fontSize;

  DrawerTextOutline({Key? key,
    required this.listText,
      this.boxFit =  BoxFit.fill,
      this.height,
      this.width,
    this.onTap,
    this.textColor,
      this.backgroundColor =  Colors.white,
      this.borderWidth = 1.0,
      this.borderRadius = 25.0,
    this.borderColor =  Colors.black,
    this.fontSize = normalTextSize,
    this.fontWeight =  FontWeight.w500,
    this.imageWidth  =25,
    this.imageHeight = 25,
      this.imageText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap!,
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
        decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(
                color:  borderColor!,
                width: borderWidth!
            ),
            borderRadius: BorderRadius.all(
                Radius.circular(borderRadius!)
            )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
           Expanded(flex: 1,child:  SizedBox(
             child: Image.asset(imageText!,
               width: imageWidth,
               height: imageHeight,
               fit: boxFit!,
             ),
           ),),
            const SizedBox(
              width: 15,
            ),

           Expanded(flex: 2,
             child:  CommonTextView(text: listText,
             fontSize: fontSize,
             fontWeight: fontWeight,
             textColor: textColor!,
           ),)
          ],
        ),
      ),
    );
  }
}
