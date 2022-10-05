import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maria_brown_hearing_clinic/common_widgets/common_text_view.dart';
import 'package:maria_brown_hearing_clinic/common_widgets/drawer_text_outline.dart';
import 'package:maria_brown_hearing_clinic/features_controllers/dashboard_controller.dart';
import 'package:maria_brown_hearing_clinic/utils/app_colors.dart';
import 'package:maria_brown_hearing_clinic/utils/app_images.dart';
import 'package:maria_brown_hearing_clinic/utils/app_strings.dart';

import '../utils/app_font_size.dart';

class NavigationDrawer extends StatelessWidget {
  final _dashboardController = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: const BoxDecoration(
            color: AppColor.colorPrimary,
          ),
          child: CommonTextView(
            text: AppStrings.appName,
            fontSize: mediumTextSize,
          ),
        ),

        const SizedBox(
          height: 30,
        ),
        /// ----- home-------////

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: DrawerTextOutline(
              listText: _dashboardController.textList[0],
              imageText: AppImages.appLogoTrans,
              imageColor: Colors.black,
              textColor: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: normalTextSize,
              onTap: () {

                _dashboardController.onTab(0);
                _dashboardController.globalKey.currentState!.closeDrawer();
              }),
        ),

        const SizedBox(
          height: 30,
        ),

        /// ----- clientInformation-------////

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: DrawerTextOutline(
              listText: _dashboardController.textList[1],
              imageText: AppImages.appLogoTrans,
              imageColor: Colors.black,
              textColor: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: normalTextSize,
              onTap: () {
                _dashboardController.onTab(1);
                _dashboardController.globalKey.currentState!.closeDrawer();
              }),
        ),

        const SizedBox(
          height: 30,
        ),

        /// ----- hearingAidInfo-------////

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: DrawerTextOutline(
              listText: _dashboardController.textList[2],
              imageText: AppImages.appLogoTrans,
              imageColor: Colors.black,
              textColor: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: normalTextSize,
              onTap: () {
                _dashboardController.onTab(2);
                _dashboardController.globalKey.currentState!.closeDrawer();
              }),
        ),

        const SizedBox(
          height: 30,
        ),

        /// ----- goldClubMemberShip-------////

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: DrawerTextOutline(
              listText: _dashboardController.textList[3],
              imageText: AppImages.appLogoTrans,
              imageColor: Colors.black,
              textColor: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: normalTextSize,
              onTap: () {
                _dashboardController.onTab(3);
                _dashboardController.globalKey.currentState!.closeDrawer();
              }),
        ),

        const SizedBox(
          height: 30,
        ),

        /// ----- hearingButler-------////

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: DrawerTextOutline(
              listText: _dashboardController.textList[4],
              imageText: AppImages.appLogoTrans,
              imageColor: Colors.black,
              textColor: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: normalTextSize,
              borderWidth: 1.0,
              onTap: () {
                _dashboardController.onTab(4);
                _dashboardController.globalKey.currentState!.closeDrawer();
              }),
        ),
      ],
    ));
  }
}
