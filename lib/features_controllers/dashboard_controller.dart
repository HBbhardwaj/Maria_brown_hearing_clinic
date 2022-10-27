

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maria_brown_hearing_clinic/features/client_info_screen.dart';
import 'package:maria_brown_hearing_clinic/features/gold_club_membership_screen.dart';
import 'package:maria_brown_hearing_clinic/features/hearing_aid_info.dart';
import 'package:maria_brown_hearing_clinic/features/hearing_butler_screen.dart';
import 'package:maria_brown_hearing_clinic/features/home_screen.dart';
import 'package:maria_brown_hearing_clinic/features/office_contact_detail_screen.dart';
import 'package:maria_brown_hearing_clinic/features/wax_removal_booking_screen.dart';
import 'package:maria_brown_hearing_clinic/utils/app_strings.dart';

import '../features/gold_ club_benefits_screen.dart';

class DashboardController extends GetxController{
  var tabIndex = 0.obs;
  List<Widget> screensList = [];
  var updatedList =[].obs;

  List<String> textList = [];

  final GlobalKey<ScaffoldState> globalKey = GlobalKey();


  @override
  void onInit() {

    screensList = <Widget>[
      HomeScreen(),
      const ClientInfoScreen(),
      HearingAidInfoScreen(),
      GoldClubInfoScreen(),
      const GoldClubBenefitsScreen(),
      HearingButlerScreen(),
      const WaxRemovalBookingScreen(),
      const OfficeContactDetailScreen()
    ];




    textList = <String>[
      AppStrings.home,
      AppStrings.clientInformation,
      AppStrings.hearingAidInfo,
      AppStrings.goldClubMemberShip,
      AppStrings.goldClubBenefits,
      AppStrings.hearingButler,
      AppStrings.waxRemovalBooking,
      AppStrings.officeContactDetails,
    ];

    updatedList.addAll(screensList);

    super.onInit();
  }


  void  onTab(int index){
    tabIndex.value = index;
  }



  @override
  void dispose() {
    super.dispose();

  }

}