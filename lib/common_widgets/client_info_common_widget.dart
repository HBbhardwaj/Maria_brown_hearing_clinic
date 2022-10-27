import 'package:flutter/cupertino.dart';
import 'package:maria_brown_hearing_clinic/utils/app_colors.dart';
import 'package:maria_brown_hearing_clinic/utils/app_font_size.dart';

import 'common_text_view.dart';

class ClientInfoCommonWidet extends StatelessWidget {
  String title, description;
  double width, titleSize, descriptionSize, marginHorizontal, marginVertical;
  Color titleColor, descriptinColor;
  FontWeight titleWight, desWeight;
  TextAlign titleAlign, desAlign;
  bool isColumn;

  ClientInfoCommonWidet(
      {super.key,
      required this.title,
      this.description = "",
      required this.width,
      this.titleSize = normalTextSize,
      this.descriptionSize = smallTextSize,
      this.titleColor = AppColor.colorBlack,
      this.descriptinColor = AppColor.colorBlack,
      this.titleWight = FontWeight.w500,
      this.titleAlign = TextAlign.start,
      this.desAlign = TextAlign.start,
      this.desWeight = FontWeight.w300,
      this.marginHorizontal = 0,
      this.marginVertical = 0,
      this.isColumn = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: EdgeInsets.symmetric(
          horizontal: marginHorizontal, vertical: marginVertical),
      child: isColumn
          ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                CommonTextView(
                  text: title,
                  fontSize: titleSize,
                  fontWeight: titleWight,
                  textColor: titleColor,
                  textAlign: titleAlign,
                ),
                CommonTextView(
                  text: description,
                  fontSize: descriptionSize,
                  fontWeight: desWeight,
                  textColor: descriptinColor,
                  textAlign: desAlign,
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    child: CommonTextView(
                      text: title,
                      fontSize: titleSize,
                      fontWeight: titleWight,
                      textColor: titleColor,
                      textAlign: titleAlign,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  flex: 2,
                  child: CommonTextView(
                    text: description,
                    fontSize: descriptionSize,
                    fontWeight: desWeight,
                    textColor: descriptinColor,
                    textAlign: desAlign,
                  ),
                )
              ],
            ),
    );
  }
}
