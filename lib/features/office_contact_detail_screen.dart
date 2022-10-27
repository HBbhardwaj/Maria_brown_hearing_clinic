

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common_widgets/client_info_common_widget.dart';
import '../common_widgets/common_text_view.dart';
import '../utils/app_colors.dart';
import '../utils/app_font_size.dart';
import '../utils/app_images.dart';
import '../utils/app_strings.dart';

class OfficeContactDetailScreen extends StatelessWidget{
  const OfficeContactDetailScreen({super.key});


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
                _phone(),
                const SizedBox(height: 10,),
                _email(),
                const SizedBox(height: 10,),
                _website(),
                const SizedBox(height: 30,),
                _hobart(),
                const SizedBox(height: 30,),
                _launceston(),
                const SizedBox(height: 30,),
                _lindisfarne(),
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
      child: CommonTextView(text: AppStrings.officeContactDetails,
        textColor: AppColor.colorBlack,
        fontSize: largeTextSize,
        fontWeight: FontWeight.w300,
      ),
    );
  }


  ///--- phone ---///
  Widget _phone(){
    return ClientInfoCommonWidet(title: AppStrings.phone,
      width: Get.width,
      description: "1300 797 519",
      marginHorizontal: 20,
      titleSize: smallTextSize,
    );
  }

  ///--- email ---///
  Widget _email(){
    return ClientInfoCommonWidet(title: AppStrings.email,
      width: Get.width,
      description: "support@mbhc.com.au",
      marginHorizontal: 20,
      titleSize: smallTextSize,
    );
  }


  ///--- website ---///
  Widget _website(){
    return ClientInfoCommonWidet(title: AppStrings.website,
      width: Get.width,
      description: "www.mbhc.com.au",
      marginHorizontal: 20,
      titleSize: smallTextSize,
    );
  }

  ///--- hobart ---///
  Widget _hobart(){
    return ClientInfoCommonWidet(title: AppStrings.hobart,
      width: Get.width,
      isColumn: true,
      description: "61 Davey St, Hobart",
      marginHorizontal: 20,
      titleSize: smallTextSize,
    );
  }

  ///--- launceston ---///
  Widget _launceston(){
    return ClientInfoCommonWidet(title: AppStrings.launceston,
      width: Get.width,
      isColumn: true,
      description: "9 Innes St, Launceston",
      marginHorizontal: 20,
      titleSize: smallTextSize,
    );
  }

  ///--- lindisfarne ---///
  Widget _lindisfarne(){
    return ClientInfoCommonWidet(title: AppStrings.lindisfarne,
      width: Get.width,
      isColumn: true,
      description: "9 Innes St, Launceston",
      marginHorizontal: 20,
      titleSize: smallTextSize,
    );
  }
}