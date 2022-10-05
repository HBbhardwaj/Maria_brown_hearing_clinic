

import 'dart:async';

import 'package:get/get.dart';
import 'package:maria_brown_hearing_clinic/utils/app_images.dart';
import 'package:maria_brown_hearing_clinic/utils/app_strings.dart';

import '../app_models/home_model.dart';

class HomeController extends GetxController{

  List<HomeModel> homeList = [];

   Future<List<HomeModel>>? futureOfList;


  @override
  void onInit() {
    super.onInit();

    homeList = <HomeModel>[
      HomeModel(title: AppStrings.winCard, description: AppStrings.clickWinCard, imageUrl:  AppImages.appLogoTrans),
      HomeModel(title: AppStrings.monthEvents, description: "", imageUrl:  AppImages.appLogoTrans),
      HomeModel(title: AppStrings.seeOurVipGold, description: "", imageUrl:  AppImages.appLogoTrans),
    ];


    futureOfList = _getList();
  }

  Future<List<HomeModel>>  _getList(){
    return Future.value(homeList);
  }

}