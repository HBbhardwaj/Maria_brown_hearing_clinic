

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maria_brown_hearing_clinic/features/client_info_screen.dart';
import 'package:maria_brown_hearing_clinic/features/gold_club_membership_screen.dart';
import 'package:maria_brown_hearing_clinic/features/hearing_aid_info.dart';
import 'package:maria_brown_hearing_clinic/features/hearing_butler_screen.dart';
import 'package:maria_brown_hearing_clinic/features/home_screen.dart';
import 'package:maria_brown_hearing_clinic/utils/app_strings.dart';

class DashboardController extends GetxController{
  var tabIndex = 0.obs;
  List<Widget> screensList = [];

  List<String> textList = [];

  final GlobalKey<ScaffoldState> globalKey = GlobalKey();


  @override
  void onInit() {
    super.onInit();
    screensList = <Widget>[
      HomeScreen(),
      ClientInfoScreen(),
      HearingAidInfoScreen(),
      GoldClubInfoScreen(),
      HearingButlerScreen()
    ];

    textList = <String>[
      AppStrings.home,
      AppStrings.clientInformation,
      AppStrings.hearingAidInfo,
      AppStrings.goldClubMemberShip,
      AppStrings.hearingButler,
    ];
  }


  void  onTab(int index){
    tabIndex.value = index;
  }


}