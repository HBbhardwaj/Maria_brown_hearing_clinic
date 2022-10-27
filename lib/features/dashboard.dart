

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maria_brown_hearing_clinic/drawer/navigation_drawer.dart';
import 'package:maria_brown_hearing_clinic/utils/app_images.dart';

import '../features_controllers/dashboard_controller.dart';
import '../utils/app_colors.dart';

class Dashboard extends StatelessWidget{

  final _dashboardController  = Get.put(DashboardController());
  Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Obx(() => SafeArea(child: Scaffold(
      key: _dashboardController.globalKey,
      appBar: AppBar(
        backgroundColor: AppColor.colorPrimary,
        elevation: 0.0,
        leading: InkWell(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset(AppImages.navigationMenu,
              color: Colors.white,
              height: 15,
              width: 15,
              fit: BoxFit.fill,),
          ),
          onTap: (){
            _dashboardController.globalKey.currentState!.openDrawer();
          },
        ),
      ),
      body: _dashboardController.updatedList.elementAt(_dashboardController.tabIndex.value),
      drawer: NavigationDrawer(),
    )));
  }

}