
import 'package:flutter/material.dart';
import 'package:maria_brown_hearing_clinic/common_widgets/common_text_view.dart';
import 'package:maria_brown_hearing_clinic/utils/app_colors.dart';
import 'package:maria_brown_hearing_clinic/utils/app_font_size.dart';

class NewsCardDesign extends StatelessWidget{
  String tvTitle , tvDescription, imageUrl;
  FontWeight titleWeight, descriptionWight;
  double? width, imageHeight;
  double height, borderRadius, borderWidth, titleSize, descriptionSize, margin;
  Color cardColor, borderColor, titleColor, descriptionColor;


  NewsCardDesign({super.key,
    required this.tvTitle,
    this.tvDescription = "",
    this.imageUrl = "",
    this.width,
    this.height = 150,
    this.imageHeight = 150,
    this.borderWidth = 1,
    this.borderRadius = 20,
    this.margin = 0,
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
      margin:  EdgeInsets.symmetric(horizontal: margin) ,
      padding:  const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: cardColor,
          border: Border.all(
              color: borderColor,
              width: borderWidth
          ),

          borderRadius:  BorderRadius.all(Radius.circular(borderRadius))
      ),

      child: Column(
        children: [
          Expanded(flex: 1,child: Center(
            child: Image.asset(
              imageUrl,
              width: width,
              height: imageHeight,
              fit: BoxFit.fill,
            ),
          ),),
          const SizedBox(width: 10,),
          Expanded(flex: 2,child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CommonTextView(text: tvTitle,
                fontSize: titleSize,
                fontWeight: titleWeight,
                textColor: titleColor,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height:  10,),
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