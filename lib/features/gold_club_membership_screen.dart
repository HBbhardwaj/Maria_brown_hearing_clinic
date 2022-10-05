


import 'package:flutter/widgets.dart';
import 'package:maria_brown_hearing_clinic/common_widgets/common_text_view.dart';
import 'package:maria_brown_hearing_clinic/utils/app_strings.dart';

class GoldClubInfoScreen extends StatelessWidget{


  @override
  Widget build(BuildContext context){
    return Container(
      child: Center(
        child: CommonTextView(
          text: AppStrings.goldClubMemberShip,
        ),
      ),
    );
  }
}