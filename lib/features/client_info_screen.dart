

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../common_widgets/common_text_view.dart';
import '../utils/app_colors.dart';
import '../utils/app_strings.dart';

class ClientInfoScreen extends StatelessWidget{
  const ClientInfoScreen({super.key});



  @override
  Widget build(BuildContext context){
    return Container(
        width: Get.width,
      height: Get.height,
      child: Stack(
        children: [
          _pageBackCard(),
          SingleChildScrollView(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
            ),
          )
        ],
      ),
    );
  }


  ///----- page background card ---///
  Widget _pageBackCard(){
    return Container(
      width: Get.width,
      height: Get.height/3.5,
      color: AppColor.colorPrimary,
    );
  }

}