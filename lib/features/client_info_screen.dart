

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../common_widgets/client_info_common_widget.dart';
import '../common_widgets/common_text_view.dart';
import '../utils/app_colors.dart';
import '../utils/app_font_size.dart';
import '../utils/app_images.dart';
import '../utils/app_strings.dart';

class ClientInfoScreen extends StatelessWidget{
  const ClientInfoScreen({super.key});



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
                _name(),
                const SizedBox(height: 10,),
                _address(),
                const SizedBox(height: 10,),
                _subrub(),
                const SizedBox(height: 10,),
                _city(),
                const SizedBox(height: 10,),
                _postCode(),
                const SizedBox(height: 30,),
                _mobile(),
                const SizedBox(height: 10,),
                _phone(),
                const SizedBox(height: 10,),
                _email(),
                const SizedBox(height: 30,),
                _doctor(),
                const SizedBox(height: 10,),
                _referral(),
                const SizedBox(height: 10,),
                _office(),
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
    return SizedBox(
      height:  Get.height/3.5,
      child:  Center(
        child: Image.asset(AppImages.appLogoTrans,
          width: Get.width/2,
          height: 220 ,
          fit: BoxFit.fill,
          color: Colors.white,
        ),
      ),
    );
  }

  ///--- client info --- ///
  Widget _appTitle(){
    return Center(
      child: CommonTextView(text: AppStrings.clientInformation,
        textColor: AppColor.colorBlack,
        fontSize: largeTextSize,
        fontWeight: FontWeight.w300,
      ),
    );
  }


  ///--- name ---///
  Widget _name(){
    return ClientInfoCommonWidet(title: AppStrings.name,
      width: Get.width,
      description: "John Smith",
      marginHorizontal: 20,
      titleSize: smallTextSize,
    );
  }



  ///--- address ---///
  Widget _address(){
    return ClientInfoCommonWidet(title: AppStrings.address,
      width: Get.width,
      description: "10 Smith St",
      marginHorizontal: 20,
      titleSize: smallTextSize,
    );
  }


  ///--- suburb ---///
  Widget _subrub(){
    return ClientInfoCommonWidet(title: AppStrings.suburb,
      width: Get.width,
      description: "Battery Point",
      marginHorizontal: 20,
      titleSize: smallTextSize,
    );
  }

  ///--- city ---///
  Widget _city(){
    return ClientInfoCommonWidet(title: AppStrings.city,
      width: Get.width,
      description: "Hobart",
      marginHorizontal: 20,
      titleSize: smallTextSize,
    );
  }




  ///--- postCode ---///
  Widget _postCode(){
    return ClientInfoCommonWidet(title: AppStrings.postCode,
      width: Get.width,
      description: "7000",
      marginHorizontal: 20,
      titleSize: smallTextSize,
    );
  }

  ///--- mobile ---///
  Widget _mobile(){
    return ClientInfoCommonWidet(title: AppStrings.mobile,
      width: Get.width,
      description: "0123456789",
      marginHorizontal: 20,
      titleSize: smallTextSize,
    );
  }


  ///--- phone ---///
  Widget _phone(){
    return ClientInfoCommonWidet(title: AppStrings.phone,
      width: Get.width,
      description: "03 6224 7588",
      marginHorizontal: 20,
      titleSize: smallTextSize,
    );
  }


  ///--- email ---///
  Widget _email(){
    return ClientInfoCommonWidet(title: AppStrings.email,
      width: Get.width,
      description: "kevin@mbhc.com.au",
      marginHorizontal: 20,
      titleSize: smallTextSize,
    );
  }


  ///--- doctor ---///
  Widget _doctor(){
    return ClientInfoCommonWidet(title: AppStrings.doctor,
      width: Get.width,
      description: "Dr.Dorthy Smith",
      marginHorizontal: 20,
      titleSize: smallTextSize,
    );
  }



  ///--- referral ---///
  Widget _referral(){
    return ClientInfoCommonWidet(title: AppStrings.refferal,
      width: Get.width,
      description: "Google Search",
      marginHorizontal: 20,
      titleSize: smallTextSize,
    );
  }


  ///--- office ---///
  Widget _office(){
    return ClientInfoCommonWidet(title: AppStrings.office,
      width: Get.width,
      description: "Hobert",
      marginHorizontal: 20,
      titleSize: smallTextSize,
    );
  }






}