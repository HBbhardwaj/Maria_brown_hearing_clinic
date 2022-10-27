
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../common_widgets/client_info_common_widget.dart';
import '../common_widgets/common_text_view.dart';
import '../utils/app_colors.dart';
import '../utils/app_font_size.dart';
import '../utils/app_images.dart';
import '../utils/app_strings.dart';

class HearingAidInfoScreen extends StatelessWidget{


  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: Get.width,
      height: Get.height,
      child: Stack(
        children: [
          _pageBackCard(),
          SingleChildScrollView(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,

              children: [
                _image(),
                const SizedBox(height: 15,),
                _appTitle(),
                const SizedBox(height: 20,),
                _manufacture(),
                const SizedBox(height: 10,),
                _product(),
                const SizedBox(height: 10,),
                _batteries(),
                const SizedBox(height: 10,),
                _domes(),
                const SizedBox(height: 10,),
                _receivers(),
                const SizedBox(height: 30,),
                _purchased(),
                const SizedBox(height: 10,),
                _warranty(),
                const SizedBox(height: 10,),
                _ears(),
                const SizedBox(height: 30,),
                _leftSerial(),
                const SizedBox(height: 10,),
                _rightSerial(),
                const SizedBox(height: 30,),
              ],
            ),
          )
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



  ///--- image ----///
  Widget _image(){
    return Center(
      child: Image.asset(AppImages.earbuds,
        width: Get.width/1.2,
        height: Get.height/3.5,
        fit: BoxFit.fill,
      ),
    );
  }

  ///--- client info --- ///
  Widget _appTitle(){
    return Center(
      child: CommonTextView(text: AppStrings.hearingAidInfo,
        textColor: AppColor.colorBlack,
        fontSize: largeTextSize,
        fontWeight: FontWeight.w300,
      ),
    );
  }


  ///--- manufacture ---///
  Widget _manufacture(){
    return ClientInfoCommonWidet(title: AppStrings.manufacturer,
      width: Get.width,
      description: "Signia",
      marginHorizontal: 20,
      titleSize: smallTextSize,
    );
  }


  ///--- product ---///
  Widget _product(){
    return ClientInfoCommonWidet(title: AppStrings.product,
      width: Get.width,
      description: "Pure 7AX",
      marginHorizontal: 20,
      titleSize: smallTextSize,
    );
  }


  ///--- batteries ---///
  Widget _batteries(){
    return ClientInfoCommonWidet(title: AppStrings.batteries,
      width: Get.width,
      description: "Rechargeable",
      marginHorizontal: 20,
      titleSize: smallTextSize,
    );
  }


  ///--- domes ---///
  Widget _domes(){
    return ClientInfoCommonWidet(title: AppStrings.domes,
      width: Get.width,
      description: "8mm Open Demos",
      marginHorizontal: 20,
      titleSize: smallTextSize,
    );
  }


  ///--- receivers ---///
  Widget _receivers(){
    return ClientInfoCommonWidet(title: AppStrings.receivers,
      width: Get.width,
      description: "Size 3 M Receivers",
      marginHorizontal: 20,
      titleSize: smallTextSize,
    );
  }


  ///--- purchased ---///
  Widget _purchased(){
    return ClientInfoCommonWidet(title: AppStrings.purchased,
      width: Get.width,
      description: "03/12/2020",
      marginHorizontal: 20,
      titleSize: smallTextSize,
    );
  }


  ///--- warranty ---///
  Widget _warranty(){
    return ClientInfoCommonWidet(title: AppStrings.warranty,
      width: Get.width,
      description: "3 years",
      marginHorizontal: 20,
      titleSize: smallTextSize,
    );
  }


  ///--- ears ---///
  Widget _ears(){
    return ClientInfoCommonWidet(title: AppStrings.ears,
      width: Get.width,
      description: "Both ears",
      marginHorizontal: 20,
      titleSize: smallTextSize,
    );
  }

  ///--- left serial ---///
  Widget _leftSerial(){
    return ClientInfoCommonWidet(title: AppStrings.leftSerial,
      width: Get.width,
      description: "LV1157",
      marginHorizontal: 20,
      titleSize: smallTextSize,
    );
  }

  ///--- right Serial ---///
  Widget _rightSerial(){
    return ClientInfoCommonWidet(title: AppStrings.rightSerial,
      width: Get.width,
      description: "LV11259",
      marginHorizontal: 20,
      titleSize: smallTextSize,
    );
  }


}