

import 'dart:async';

import 'package:get/get.dart';
import 'package:maria_brown_hearing_clinic/utils/app_images.dart';
import 'package:maria_brown_hearing_clinic/utils/app_strings.dart';

import '../app_models/home_model.dart';

class HomeController extends GetxController{

  List<HomeModel> homeList = [];
  List<HomeModel> newsList = [];

   Future<List<HomeModel>>? futureOfList;
   Future<List<HomeModel>>? futureOfNewsList;

  @override
  void onInit() {
    super.onInit();

    homeList = <HomeModel>[
      HomeModel(title: AppStrings.enterOurFreeOctoberGiveaway, description: AppStrings.clickHere, imageUrl:  AppImages.appLogoTrans),
      HomeModel(title: AppStrings.ourNextEventFriday, description: AppStrings.clickHere, imageUrl:  AppImages.appLogoTrans),
     ];


    newsList = <HomeModel>[
      HomeModel(title: AppStrings.waxRemovingHasReturnedMBHC, description: AppStrings.staticDate, imageUrl:  AppImages.appLogoTrans),
      HomeModel(title: AppStrings.thisNovemberOurBirthday, description: AppStrings.staticDate, imageUrl:  AppImages.appLogoTrans),
    ];


    futureOfList = _getList();
    futureOfNewsList = _getNewsList();
  }

  Future<List<HomeModel>>  _getList(){
    return Future.value(homeList);
  }


  Future<List<HomeModel>>  _getNewsList(){
    return Future.value(newsList);
  }



}