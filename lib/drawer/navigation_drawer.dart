import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maria_brown_hearing_clinic/common_widgets/common_text_view.dart';
import 'package:maria_brown_hearing_clinic/common_widgets/drawer_text_outline.dart';
import 'package:maria_brown_hearing_clinic/features_controllers/dashboard_controller.dart';
import 'package:maria_brown_hearing_clinic/utils/app_colors.dart';
import 'package:maria_brown_hearing_clinic/utils/app_images.dart';
import 'package:maria_brown_hearing_clinic/utils/app_strings.dart';

import '../common_widgets/card_design.dart';
import '../utils/app_font_size.dart';

class NavigationDrawer extends StatelessWidget {
  final _dashboardController = Get.put(DashboardController());

   NavigationDrawer({super.key});

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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,


            children: [

              Container(
                width: 70.0,
                height: 701.0,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 10,),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  CommonTextView(
                    text: "Kevin Brown",
                    fontSize: normalTextSize,
                    fontWeight: FontWeight.w300,
                    textColor: Colors.white,
                  ),

                  const SizedBox(height: 7,),
                  CommonTextView(
                    text: "Pure 5AX(x2)",
                    fontSize: extraSmallTextSize,
                    fontWeight: FontWeight.w200,
                    textColor: Colors.white,
                  )
                ],
              )
            ],
          ),
        ),

        const SizedBox(
          height: 20,
        ),
        /// ----- home-------////

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: DrawerTextOutline(
              listText: _dashboardController.textList[0],
              imageText: AppImages.diamond,
              textColor: Colors.black,
              fontWeight: FontWeight.w400,
              boxFit: BoxFit.fitHeight,
              fontSize: smallTextSize,
              onTap: () {

                _dashboardController.onTab(0);
                _dashboardController.globalKey.currentState!.closeDrawer();
              }),
        ),

        const SizedBox(
          height: 20,
        ),

        /// ----- clientInformation-------////

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: DrawerTextOutline(
              listText: _dashboardController.textList[1],
              imageText: AppImages.diamond,
              textColor: Colors.black,
              fontWeight: FontWeight.w400,
              boxFit: BoxFit.fitHeight,
              fontSize: smallTextSize,
              onTap: () {
                _dashboardController.onTab(1);
                _dashboardController.globalKey.currentState!.closeDrawer();
              }),
        ),

        const SizedBox(
          height: 20,
        ),

        /// ----- hearingAidInfo-------////

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: DrawerTextOutline(
              listText: _dashboardController.textList[2],
              imageText: AppImages.diamond,
              textColor: Colors.black,
              boxFit: BoxFit.fitHeight,
              fontWeight: FontWeight.w400,
              fontSize: smallTextSize,
              onTap: () {
                _dashboardController.onTab(2);
                _dashboardController.globalKey.currentState!.closeDrawer();
              }),
        ),

        const SizedBox(
          height: 20,
        ),

        /// ----- goldClubMemberShip-------////

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: DrawerTextOutline(
              listText: _dashboardController.textList[3],
              imageText: AppImages.diamond,
              boxFit: BoxFit.fitHeight,
              textColor: Colors.black,
              backgroundColor: Colors.yellow,
              fontWeight: FontWeight.w400,
              fontSize: smallTextSize,
              onTap: () {
                _dashboardController.onTab(3);
                _dashboardController.globalKey.currentState!.closeDrawer();
              }),
        ),

        const SizedBox(
          height: 20,
        ),



        /// ----- goldClubBenefits-------////

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: DrawerTextOutline(
              listText: _dashboardController.textList[4],
              imageText: AppImages.diamond,
              boxFit: BoxFit.fitHeight,
              textColor: Colors.black,
              backgroundColor: Colors.yellow,
              fontWeight: FontWeight.w400,
              fontSize: smallTextSize,
              onTap: () {
                _dashboardController.onTab(4);
                _dashboardController.globalKey.currentState!.closeDrawer();
              }),
        ),

        const SizedBox(
          height: 20,
        ),



        /// ----- hearingButler-------////

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: DrawerTextOutline(
              listText: _dashboardController.textList[5],
              imageText: AppImages.diamond,
              imageWidth: 20,
              textColor: Colors.black,
              fontWeight: FontWeight.w400,
              boxFit: BoxFit.fitHeight,
              fontSize: smallTextSize,
              borderWidth: 1.0,
              onTap: () {
                _dashboardController.onTab(5);
                _dashboardController.globalKey.currentState!.closeDrawer();
              }),
        ),

        const SizedBox(
          height: 20,
        ),



        /// ----- wax removal booking -------////

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: DrawerTextOutline(
              listText: _dashboardController.textList[6],
              imageText: AppImages.diamond,
              imageWidth: 20,
              textColor: Colors.black,
              fontWeight: FontWeight.w400,
              boxFit: BoxFit.fitHeight,
              fontSize: smallTextSize,
              borderWidth: 1.0,
              onTap: () {
                _dashboardController.onTab(6);
                _dashboardController.globalKey.currentState!.closeDrawer();
              }),
        ),

        const SizedBox(
          height: 20,
        ),



        /// ----- office contact deatil-------////

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: DrawerTextOutline(
              listText: _dashboardController.textList[7],
              imageText: AppImages.diamond,
              imageWidth: 20,
              textColor: Colors.black,
              fontWeight: FontWeight.w400,
              boxFit: BoxFit.fitHeight,
              fontSize: smallTextSize,
              borderWidth: 1.0,
              onTap: () {
                _dashboardController.onTab(7);
                _dashboardController.globalKey.currentState!.closeDrawer();
              }),
        ),

        const SizedBox(
          height: 20,
        ),

        ///---- text askAnything ----///
        Padding(padding:  const EdgeInsets.symmetric(horizontal: 10.0),child: _askAnything(),)
      ],
    ));
  }


  ///---- text askAnything ----///
  Widget _askAnything(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      child: CardDesign(
        height: 80,
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
