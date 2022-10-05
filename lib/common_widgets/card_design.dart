

import 'package:flutter/material.dart';
import 'package:maria_brown_hearing_clinic/common_widgets/common_text_view.dart';
import 'package:maria_brown_hearing_clinic/utils/app_colors.dart';
import 'package:maria_brown_hearing_clinic/utils/app_font_size.dart';

class CardDesign extends StatelessWidget{
  String tvTitle , tvDescription, imageUrl;
  FontWeight titleWeight, descriptionWight;
  double? width;
  double height, borderRadius, borderWidth, titleSize, descriptionSize;
  Color cardColor, borderColor, titleColor, descriptionColor;


  CardDesign({super.key,
    required this.tvTitle,
    this.tvDescription = "",
    this.imageUrl = "",
    this.width,
    this.height = 70,
    this.borderWidth = 1,
    this.borderRadius = 20,
    this.titleSize = largeTextSize,
    this.descriptionSize = normalTextSize,
    this.cardColor = AppColor.colorWhite,
    this.borderColor = Colors.black,
    this.titleColor = Colors.black,
    this.descriptionColor = Colors.black,
    this.titleWeight  = FontWeight.w500,
    this.descriptionWight = FontWeight.w300
});


  @override
  Widget build(BuildContext context){

    return Container(
      width: width,
      height: height,
      padding:  const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: cardColor,
        border: Border.all(
          color: borderColor,
          width: borderRadius
        ),

        borderRadius:  BorderRadius.all(Radius.circular(borderRadius))
      ),

      child: Row(
        children: [
          Expanded(flex: 1,child: Image.asset(
            imageUrl,
            width: width,
            fit: BoxFit.fill,
          ),),
          const SizedBox(width: 15,),
          Expanded(flex: 2,child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonTextView(text: tvTitle,
                fontSize: titleSize,
                fontWeight: titleWeight,
                textColor: titleColor,
              ),
              const SizedBox(height:  15,),
              CommonTextView(text: tvDescription,
                fontSize: descriptionSize,
                fontWeight: descriptionWight,
                textColor: descriptionColor,
              ),

            ],
          ))
        ],
      ),
    );
  }
}