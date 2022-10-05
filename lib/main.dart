
import 'dart:io' as io;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maria_brown_hearing_clinic/app_routes/page_routes.dart';
import 'package:maria_brown_hearing_clinic/app_routes/routes.dart';
import 'package:maria_brown_hearing_clinic/utils/app_strings.dart';
import 'package:salesiq_mobilisten/salesiq_mobilisten.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    initPlatformState();
    initMobileListen();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner : false,
      title: AppStrings.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.splashScreen,
      getPages: appRoutes(),
    );
  }


  Future<void> initMobileListen() async {
    if (io.Platform.isIOS || io.Platform.isAndroid) {
      String appKey;
      String accessKey;
      if (io.Platform.isIOS) {
        appKey = ZohoStrings.zohoIoAppKey;
        accessKey = ZohoStrings.zohoIoAccessKey;
      } else {
        appKey = ZohoStrings.zohoAndroidAppKey;
        accessKey = ZohoStrings.zohoAndroidAccessKey;
      }
      ZohoSalesIQ.init(appKey, accessKey).then((_) {
        // initialization successful
        ZohoSalesIQ.showLauncher(true);

      }).catchError((error) {
        // initialization failed
        debugPrint("zoho initialization error ====> $error");
      });
      ZohoSalesIQ.setThemeColorForiOS("#123456");

    }
  }


  Future<void> initPlatformState() async {
    if (!mounted) return;

  }


}

