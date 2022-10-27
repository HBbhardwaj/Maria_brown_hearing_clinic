


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maria_brown_hearing_clinic/common_widgets/common_text_view.dart';
import 'package:maria_brown_hearing_clinic/features_controllers/gold_club_membership_controller.dart';
import 'package:maria_brown_hearing_clinic/utils/app_strings.dart';

import '../app_models/home_model.dart';
import '../utils/app_colors.dart';
import '../utils/app_font_size.dart';

class GoldClubInfoScreen extends StatelessWidget{
   GoldClubInfoScreen({super.key});

  final _membershipController = Get.put(GoldClubMemberShipController());


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
            _appDescription(),
            const SizedBox(height: 20,),
            _membershipList(context)
          ],
        ),
      ),
    );
  }






   ///--- goldClub Membership --- ///
   Widget _appTitle(){
     return SizedBox(
         width: Get.width/1.2,
         height: Get.height/7,
         child:Center(
           child: CommonTextView(text: AppStrings.goldClubMemberShipNew,
             textColor: AppColor.colorWhite,
             fontSize: extraLargeTextSize,
             fontWeight: FontWeight.w500,
             fontStyle: FontStyle.italic,
           ),
         )
     );
   }



   ///--- goldClub Membership description --- ///
   Widget _appDescription(){
     return Center(
       child: CommonTextView(text: AppStrings.uInclusionProgram,
         textColor: AppColor.colorWhite,
         fontSize: normalTextSize,
         textAlign: TextAlign.center,
         fontWeight: FontWeight.w200,
       ),
     );
   }



   ///--- gold Club Membership List ----///
  Widget _membershipList(BuildContext context){
    return  FutureBuilder<List<HomeModel>>(
        future: _membershipController.futureOfList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<HomeModel> homeList = snapshot.data!;
            return GridView.builder(
              itemCount: homeList.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: (context.orientation == Orientation.portrait) ? 2 : 3,
                  childAspectRatio:(Get.height * 0.0019)),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      padding: const EdgeInsets.all(10.0),
                      decoration: const BoxDecoration(
                        color: Colors.yellow,
                        shape: BoxShape.circle,

                      ),
                      child: Image.asset(homeList[index].imageUrl, fit: BoxFit.fill,),
                    ),
                    const SizedBox(height: 10,),
                    CommonTextView(text: homeList[index].title,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w200,
                    fontSize: smallTextSize,
                    textColor: Colors.white,)
                  ],
                );
              },
            ) ;}
          return const CircularProgressIndicator();
        }
    );
  }

}