
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:maria_brown_hearing_clinic/features_controllers/hearing_butler_controller.dart';
import 'package:maria_brown_hearing_clinic/utils/app_colors.dart';
import 'package:maria_brown_hearing_clinic/utils/app_font_size.dart';

import '../common_widgets/common_text_view.dart';
import '../utils/app_strings.dart';

class HearingButlerScreen extends StatelessWidget{
   HearingButlerScreen({Key? key}) : super(key: key);


  final _hearingController = Get.put(HearingButlerController());

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: Get.width,
      height: Get.height,
      child: Stack(
        children: [
          Container(
            width: Get.width,
            height: Get.height/3.5,
            color: AppColor.colorPrimary,
          ),

          SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                _appBarText(),
                const SizedBox(height: 5,),
                _appBarDescription(),
                const SizedBox(height: 10,),
                _chatList()

              ],
            ),
          )
        ],
      ),
    );
  }


  /// ---- app bar text title -----///
  Widget _appBarText(){
    return Center(
      child: CommonTextView(text: AppStrings.hearingButler,
        textColor: AppColor.colorWhite,
        fontSize: largeTextSize,
        fontWeight: FontWeight.w300,
      ),
    );
   }


  /// ---- app bar text title -----///
  Widget _appBarDescription(){
    return Center(
      child: CommonTextView(text: AppStrings.hereHelpThingsHearing,
        textColor: AppColor.colorWhite,
        fontSize: smallTextSize,
        fontWeight: FontWeight.w200,
      ),
    );
  }


  ///--- chat list ---///
   Widget _chatList(){
    return Flexible(child: ListView.builder(
        itemCount: 5,
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: Get.width,
            padding:  const EdgeInsets.symmetric(horizontal: 15.0),
            decoration:const BoxDecoration(
                color: AppColor.colorReceiverCard,
                borderRadius:  BorderRadius.all(Radius.circular(10.0))
            ),
          );
        }));
   }



}