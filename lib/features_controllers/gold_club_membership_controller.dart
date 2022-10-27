

import 'package:get/get.dart';

import '../app_models/home_model.dart';
import '../utils/app_images.dart';
import '../utils/app_strings.dart';

class GoldClubMemberShipController extends GetxController{
  List<HomeModel> membershipList = [];

  Future<List<HomeModel>>? futureOfList;


  @override
  void onInit() {
    super.onInit();

    membershipList = <HomeModel>[
      HomeModel(title: AppStrings.threeYearsWarranty, description: "", imageUrl:  AppImages.giftBox),
      HomeModel(title: AppStrings.threeYearsWarranty, description:"", imageUrl:  AppImages.giftBox),
      HomeModel(title: AppStrings.threeYearsWarranty, description:"", imageUrl:  AppImages.giftBox),
      HomeModel(title: AppStrings.threeYearsWarranty, description:"", imageUrl:  AppImages.giftBox),
      HomeModel(title: AppStrings.threeYearsWarranty, description:"", imageUrl:  AppImages.giftBox),
      HomeModel(title: AppStrings.threeYearsWarranty, description:"", imageUrl:  AppImages.giftBox),
      HomeModel(title: AppStrings.threeYearsWarranty, description:"", imageUrl:  AppImages.giftBox),
      HomeModel(title: AppStrings.threeYearsWarranty, description:"", imageUrl:  AppImages.giftBox),
      HomeModel(title: AppStrings.threeYearsWarranty, description:"", imageUrl:  AppImages.giftBox),
      HomeModel(title: AppStrings.threeYearsWarranty, description:"", imageUrl:  AppImages.giftBox),
      HomeModel(title: AppStrings.threeYearsWarranty, description:"", imageUrl:  AppImages.giftBox),
      HomeModel(title: AppStrings.threeYearsWarranty, description:"", imageUrl:  AppImages.giftBox),
      HomeModel(title: AppStrings.threeYearsWarranty, description:"", imageUrl:  AppImages.giftBox),
      HomeModel(title: AppStrings.threeYearsWarranty, description:"", imageUrl:  AppImages.giftBox),
    ];




    futureOfList = _getList();
  }

  Future<List<HomeModel>>  _getList(){
    return Future.value(membershipList);
  }


}