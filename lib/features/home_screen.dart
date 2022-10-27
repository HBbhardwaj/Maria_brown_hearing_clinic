
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maria_brown_hearing_clinic/app_models/home_model.dart';
import 'package:maria_brown_hearing_clinic/common_widgets/card_design.dart';
import 'package:maria_brown_hearing_clinic/features_controllers/home_controller.dart';
import 'package:maria_brown_hearing_clinic/utils/app_font_size.dart';
import 'package:maria_brown_hearing_clinic/utils/app_images.dart';

import '../common_widgets/common_text_view.dart';
import '../common_widgets/news_card_design.dart';
import '../utils/app_colors.dart';
import '../utils/app_strings.dart';

class HomeScreen extends StatelessWidget{
   HomeScreen({super.key});

  final _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context){
    return Container(
      width: Get.width,
      height: Get.height,
      color: CupertinoColors.systemGrey6,
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
                const SizedBox(height: 25,),
                _getProductList(context),
                const SizedBox(height: 20,),
                _newsText(),
                const SizedBox(height: 10,),
                _getNewsList(),
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
   ///--- image ----///
   Widget _image(){
     return Center(
       child: Image.asset(AppImages.appLogoTrans,
         width: Get.width/2,
         height: 220,
         fit: BoxFit.fill,
         color: Colors.white,
       ),
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
   Widget _getProductList(BuildContext context){
    return  FutureBuilder<List<HomeModel>>(
        future: _homeController.futureOfList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            debugPrint("homeList =====> ${snapshot.data!.length}");
            List<HomeModel> homeList = snapshot.data!;
            debugPrint("homeList 0 =====> $homeList,,, ${homeList[0].title}");
            return SizedBox(
              height: 200,
              child: ListView.builder(itemBuilder: (context, int index){
                return NewsCardDesign(tvTitle: homeList[index].title,
                  margin: 15,
                  imageUrl: homeList[index].imageUrl,
                  tvDescription: homeList[index].description,
                  height: 200,
                titleSize: smallTextSize,
                  descriptionSize: extraSmallTextSize,
                cardColor: Colors.yellow,
                width: Get.width/2,);
              },
                itemCount: homeList.length,
                scrollDirection:  Axis.horizontal,),
            );}
          return const CircularProgressIndicator();
        }
    );
   }


   ///---- news title ----///
   Widget _newsText(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: CommonTextView(text: AppStrings.news,
        textColor: AppColor.colorBlack,
        fontSize: largeTextSize,
        fontWeight: FontWeight.w500,
      ),
    );
   }


   ///--- newsList ----///
   Widget _getNewsList(){
     return  FutureBuilder<List<HomeModel>>(
         future: _homeController.futureOfNewsList,
         builder: (context, snapshot) {
           if (snapshot.hasData) {
             List<HomeModel> homeList = snapshot.data!;
             return SizedBox(
               height: 200,
               child: ListView.builder(itemBuilder: (context, int index){
                 return NewsCardDesign(tvTitle: homeList[index].title,
                   margin: 15,
                   cardColor: CupertinoColors.white,
                   imageUrl: homeList[index].imageUrl,
                   tvDescription: homeList[index].description,
                   height: 200,
                   titleSize: smallTextSize,
                   descriptionSize: extraSmallTextSize,
                   width: Get.width/2,);
               },
                 itemCount: homeList.length,
                 scrollDirection:  Axis.horizontal,),
             );}
           return const CircularProgressIndicator();
         }
     );
   }


   ///---- text askAnything ----///
   Widget _askAnything(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      child: CardDesign(
        height: 100,
        tvTitle: AppStrings.askHearingButler,
        imageUrl: AppImages.appLogoTrans,
        borderColor: Colors.black,
        cardColor: AppColor.colorDarkYellow,
        borderRadius: 20,
        borderWidth: 1,
        titleSize: smallTextSize,
        tvDescription: "",
        textAlign: TextAlign.center,
      ),
    );
   }



}