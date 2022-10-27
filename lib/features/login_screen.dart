
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maria_brown_hearing_clinic/app_routes/routes.dart';
import 'package:maria_brown_hearing_clinic/common_widgets/common_text_view.dart';
import 'package:maria_brown_hearing_clinic/utils/app_colors.dart';
import 'package:maria_brown_hearing_clinic/utils/app_font_size.dart';
import 'package:maria_brown_hearing_clinic/utils/app_strings.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../app_services/api_url.dart';

class LoginScreen extends StatelessWidget{

  WebViewController? _myController;
  final Completer<WebViewController> _controller = Completer<WebViewController>();
  RxBool isLoading = true.obs;
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.colorPrimary,
        title: CommonTextView(
          text: AppStrings.login,
          fontSize: mediumTextSize,
          fontWeight: FontWeight.w500,
          textColor: Colors.white,
        ),
      ),

      body: Obx(() =>
        Stack(
          children: [
            SizedBox(
              width: Get.width,
              height: Get.height,
              child:WebView(
                initialUrl: AppUrl.zohoClientLoginUrl,
                javascriptMode: JavascriptMode.unrestricted,
                gestureNavigationEnabled: true,
                onWebViewCreated: (WebViewController webViewController) {

                  debugPrint("webController===> ${webViewController.currentUrl()}");
                  _controller.complete(webViewController);
                  _myController = webViewController;
                },
                navigationDelegate: (NavigationRequest request) {
                  debugPrint("onPageLoading ====> ${request.url.toString()}");

                  if(request.url.toString().contains("/oauthorize")){
                    Get.offAndToNamed(Routes.dashboard);
                  }
                  return NavigationDecision.prevent;
                },

                onPageFinished: (String url) {
                  debugPrint('Page finished loading: $url');
                  isLoading.value = false;
                  _myController!.evaluateJavascript(
                      "document.documentElement.innerHTML").then((value) {
                    // log("url response =====> $value");
                  });
                },
              ),
            ),
            Visibility(visible: isLoading.value,child:  SizedBox(
              width: Get.width,
              height: Get.height,
              child:const  Center(
                child: CircularProgressIndicator(),
              ),
            ),)
          ],
        ))
    );
  }


}