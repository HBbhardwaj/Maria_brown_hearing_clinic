
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maria_brown_hearing_clinic/app_models/home_model.dart';
import 'package:maria_brown_hearing_clinic/common_widgets/card_design.dart';
import 'package:maria_brown_hearing_clinic/features_controllers/home_controller.dart';
import 'package:maria_brown_hearing_clinic/utils/app_font_size.dart';
import 'package:maria_brown_hearing_clinic/utils/app_images.dart';

import '../common_widgets/common_text_view.dart';
import '../utils/app_colors.dart';
import '../utils/app_strings.dart';

class HomeScreen extends StatelessWidget{
   HomeScreen({super.key});

  final _homeController = Get.put(HomeController());


  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: Get.width,
      height: Get.height,
      child: Stack(
        children: [
          _pageBackCard(),
          SingleChildScrollView(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                _image(),
                const SizedBox(height: 15,),
                _appTitle(),
                const SizedBox(height: 5,),
                _appDescription(),
                const SizedBox(height: 10,),
                _newsText(),
                const SizedBox(height: 10,),
                _askAnything(),
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
      height: Get.height/2,
      color: AppColor.colorPrimary,
    );
   }


   ///--- image ----///
   Widget _image(){
     return Image.asset(AppImages.appLogoTrans,
     width: Get.width,
     height: Get.height/3.5,
     fit: BoxFit.fill,
     );
   }


   ///--- title --- ///
   Widget _appTitle(){
    return Center(
      child: CommonTextView(text: AppStrings.randomName,
        textColor: AppColor.colorWhite,
        fontSize: largeTextSize,
        fontWeight: FontWeight.w300,
      ),
    );
   }


   ///--- description --- ///
   Widget _appDescription(){
    return Center(
      child: CommonTextView(text: AppStrings.howCanHelp,
        textColor: AppColor.colorWhite,
        fontSize: smallTextSize,
        fontWeight: FontWeight.w200,
      ),
    );
   }


   ///--- list data ----///
   Widget _getProductList(){
    return  FutureBuilder<List<HomeModel>>(
        future: _homeController.futureOfList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            debugPrint("homeList =====> ${snapshot.data!.length}");
            List<HomeModel> homeList = snapshot.data!;
            debugPrint("homeList 0 =====> $homeList,,, ${homeList[0].title}");
            return Container();
          }
          return const CircularProgressIndicator();
        }
    );
   }


   ///---- news title ----///
   Widget _newsText(){
    return Center(
      child: CommonTextView(text: AppStrings.news,
        textColor: AppColor.colorWhite,
        fontSize: largeTextSize,
        fontWeight: FontWeight.w300,
      ),
    );
   }


   ///--- newsList ----///
   Widget _getNewsList(){
    return Flexible(child:  ListView.builder(itemBuilder: (context, item){return Container();},
    itemCount: 5,
    shrinkWrap: true,
    physics: const AlwaysScrollableScrollPhysics(),
    scrollDirection: Axis.horizontal,));
   }


   ///---- text askAnything ----///
   Widget _askAnything(){
    return Center(
      child: CardDesign(
        tvTitle: AppStrings.askHearingButler,
        imageUrl: AppImages.appLogoTrans,
        borderColor: Colors.black,
        cardColor: AppColor.colorDarkYellow,
        borderRadius: 20,
        borderWidth: 1,

      ),
    );
   }



}