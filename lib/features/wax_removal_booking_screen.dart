

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common_widgets/common_text_view.dart';
import '../utils/app_colors.dart';
import '../utils/app_font_size.dart';
import '../utils/app_strings.dart';

class WaxRemovalBookingScreen extends StatelessWidget{
  const WaxRemovalBookingScreen({super.key});



  @override
  Widget build(BuildContext context){
    return Container(
      width: Get.width,
      height: Get.height,
      color: CupertinoColors.systemGrey6,
      child: Stack(
        children: [
          _pageBackCard(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,

            children: [
              _appTitle(),
              const SizedBox(height: 10,),
              _appdescription(),
              const SizedBox(height: 30,),
              Expanded(child: _zohoWidgetCard(),flex: 1,)

            ],
          ),
        ],
      ),
    );
  }


  ///----- page background card ---///
  Widget _pageBackCard(){
    return Container(
      width: Get.width,
      height: Get.height/3.5,
      color: AppColor.colorPrimary,
    );
  }



  ///--- wax removal --- ///
  Widget _appTitle(){
    return Center(
      child: CommonTextView(text: AppStrings.waxRemoval,
        textColor: AppColor.colorWhite,
        fontSize: largeTextSize,
        fontWeight: FontWeight.w300,
      ),
    );
  }



  ///--- wax removal --- ///
  Widget _appdescription(){
    return Center(
      child: CommonTextView(text: AppStrings.reserveYourTimeBelow,
        textColor: AppColor.colorWhite,
        fontSize: smallTextSize,
        fontWeight: FontWeight.w300,
      ),
    );
  }


  ///---- zoho widget card ----///
   Widget _zohoWidgetCard(){
    return Container(
      width: Get.width,
      height: Get.height/1.3,
      margin: const EdgeInsets.only(
        left: 20.0, right: 20.0, bottom: 20.0
      ),
      decoration:const  BoxDecoration(
        color: Colors.white,
        borderRadius:   BorderRadius.all(Radius.circular(15.0))
      ),
      child: Center(
        child: CommonTextView(
          text: AppStrings.insertZohoBookingWidget,
          textAlign: TextAlign.center,
          textColor: AppColor.colorBlack,
          fontWeight: FontWeight.w200,
          fontSize: smallTextSize,

        ),
      ),
    );
   }



}