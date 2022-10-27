


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common_widgets/common_text_view.dart';
import '../common_widgets/drawer_text_outline.dart';
import '../utils/app_colors.dart';
import '../utils/app_font_size.dart';
import '../utils/app_images.dart';
import '../utils/app_strings.dart';

class GoldClubBenefitsScreen extends StatelessWidget{
  const GoldClubBenefitsScreen({super.key});


  @override
  Widget build(BuildContext context){
    return Container(
      width: Get.width,
      height: Get.height,
      color: AppColor.colorPrimary,
      child:  SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,

          children: [
            _appTitle(),
            const SizedBox(height: 20,),
            _vipGiveaway(),
            const SizedBox(height: 15,),
            _promotions(),
            const SizedBox(height: 15,),
            _mbhcDraw(),
            const SizedBox(height: 15,),
            _eventsNews(),
            const SizedBox(height: 15,),
            _specialDiscounts(),
            const SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }


  ///--- goldClub benefits --- ///
  Widget _appTitle(){
    return SizedBox(
        width: Get.width,
        height: Get.height/7,
        child:Center(
          child: CommonTextView(text: AppStrings.goldClubBenefitsNew,
            textColor: AppColor.colorWhite,
            fontSize: extraLargeTextSize,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
            textAlign: TextAlign.center,
          ),
        )
    );
  }


  ///--- vip giveaway---///
  Widget _vipGiveaway(){
   return DrawerTextOutline(
        listText: AppStrings.freeVipGiveaway,
        imageText: AppImages.diamond,
        textColor: Colors.black,
        fontWeight: FontWeight.w400,
        boxFit: BoxFit.fitHeight,
        fontSize: smallTextSize,
        backgroundColor: Colors.yellow,
        borderColor: Colors.yellow,
        height: 90,
        imageHeight: 35,
        imageWidth: 35,
        onTap: () {
        });
  }


  ///--- promotions---///
  Widget _promotions(){
    return DrawerTextOutline(
        listText: AppStrings.promotionMonth,
        imageText: AppImages.diamond,
        textColor: Colors.black,
        fontWeight: FontWeight.w400,
        boxFit: BoxFit.fitHeight,
        fontSize: smallTextSize,
        backgroundColor: Colors.yellow,
        borderColor: Colors.yellow,
        height: 90,
        imageHeight: 35,
        imageWidth: 35,
        onTap: () {
        });
  }

  ///--- mbhc draw---///
  Widget _mbhcDraw(){
    return DrawerTextOutline(
        listText: AppStrings.enterThisMonthMBHCDraw,
        imageText: AppImages.diamond,
        textColor: Colors.black,
        fontWeight: FontWeight.w400,
        boxFit: BoxFit.fitHeight,
        fontSize: smallTextSize,
        backgroundColor: Colors.yellow,
        borderColor: Colors.yellow,
        height: 90,
        imageHeight: 35,
        imageWidth: 35,
        onTap: () {
        });
  }

  ///--- events news ---///
  Widget _eventsNews(){
    return DrawerTextOutline(
        listText: AppStrings.eventsNews,
        imageText: AppImages.diamond,
        textColor: Colors.black,
        fontWeight: FontWeight.w400,
        boxFit: BoxFit.fitHeight,
        fontSize: smallTextSize,
        backgroundColor: Colors.yellow,
        borderColor: Colors.yellow,
        height: 90,
        imageHeight: 35,
        imageWidth: 35,
        onTap: () {
        });
  }

  ///--- special discounts ---///
  Widget _specialDiscounts(){
    return DrawerTextOutline(
        listText: AppStrings.specialDiscounts,
        imageText: AppImages.diamond,
        textColor: Colors.black,
        fontWeight: FontWeight.w400,
        boxFit: BoxFit.fitHeight,
        fontSize: smallTextSize,
        backgroundColor: Colors.yellow,
        borderColor: Colors.yellow,
        height: 90,
        imageHeight: 35,
        imageWidth: 35,
        onTap: () {
        });
  }

}