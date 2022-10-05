

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maria_brown_hearing_clinic/app_routes/routes.dart';
import 'package:maria_brown_hearing_clinic/common_widgets/common_text_view.dart';
import 'package:maria_brown_hearing_clinic/common_widgets/outline_button.dart';
import 'package:maria_brown_hearing_clinic/utils/app_colors.dart';
import 'package:maria_brown_hearing_clinic/utils/app_font_size.dart';
import 'package:maria_brown_hearing_clinic/utils/app_images.dart';
import 'package:maria_brown_hearing_clinic/utils/app_strings.dart';

class SplashScreen extends StatefulWidget{

  _SplashScreenState createState() => _SplashScreenState();
}



class _SplashScreenState extends State<SplashScreen>{


  @override
  void initState() {
    super.initState();

    FocusManager.instance.primaryFocus?.unfocus();
  }

  @override
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor:AppColor.colorPrimary,
      body: Container(
        width: Get.width,
        height: Get.height,
        color: AppColor.colorPrimary,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 30,),
            /// ---- logo ----////
            Expanded(flex:
              2,child: Image.asset(AppImages.appLogoTrans,
            fit: BoxFit.fill,
              color: Colors.white,
             width: Get.width/2,),),

            /// --- app image ---

            Expanded(flex:
              4,child: Image.asset(AppImages.appLogoTrans,
              fit: BoxFit.fill,
              color: Colors.white,
              width: Get.width/2,),),



            /// --- welcome text --- ///

            const Expanded(flex:
            1,child:  Center(
              child:Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Welcome to the ', style: TextStyle(
                      color: Colors.white,
                      fontSize: largeTextSize
                    )),
                    TextSpan(
                      text: '\nExperts',
                      style: TextStyle(fontWeight: FontWeight.w500, color: AppColor.colorPrimaryDark,
                          fontSize: largeTextSize,
                        fontStyle: FontStyle.italic
                      ),
                    ),
                    TextSpan(text: ' in Hearing',style: TextStyle(
                        color: Colors.white,
                      fontSize: largeTextSize
                    )),
                  ],
                ),
              )),),


            /// --- login Text ---

            Expanded(flex:
            1,child:Padding(
              padding: const EdgeInsets.all(15.0),
              child:  CommonOutlineButton(
                width: Get.width/2,fontColor: Colors.white,
                buttonText: AppStrings.login,
                outlineColor: Colors.white,
                borderRadius: 20,
                height: 40,
                onTap: (){
                  Get.offAndToNamed(Routes.dashboard);
                },
              ),
            ),),

          ],
        ),
        
      ),
    );
  }



}