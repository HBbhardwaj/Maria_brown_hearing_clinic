

import 'package:flutter/widgets.dart';

import '../common_widgets/common_text_view.dart';
import '../utils/app_strings.dart';

class HomeScreen extends StatelessWidget{


  @override
  Widget build(BuildContext context){
    return Container(
      child: Center(
        child: CommonTextView(
          text: AppStrings.home,
        ),
      ),
    );
  }
}