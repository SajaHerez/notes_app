import 'package:flutter/material.dart';

import '../../utilities/style/appColors.dart';
import '../../utilities/style/spaces.dart';
import '../../utilities/style/textStyle.dart';
import 'customButton.dart';

class CustomModalSheet {
  static dynamic showModalSheet(BuildContext context,
      {required String title,
      required String btnTitle,
      required TextEditingController? controller,
      required dynamic Function()? onPressed}) {
    return showModalBottomSheet(
        context: context,
        backgroundColor: AppColors.modelsheetgray,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0)),
        ),
        builder: (cotext) => Container(
              height: 550,
              width: 414,
              padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
              child: Column(
                children: [
                  Text(title,
                      style: TextStyles.titleStyle2, textAlign: TextAlign.left),
                  SpacesHelper.verticalSpace(10),
                  Container(
                    height: 288,
                    width: 366,
                    alignment: Alignment.center,
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLength: 256,
                      style: TextStyles.titleStyle2,
                      maxLines: 12,
                      controller: controller,
                      decoration: InputDecoration(
                        hintText: 'Type something...',
                        hintStyle: TextStyles.titleStyle2,
                        filled: true,
                        fillColor: AppColors.darkGray,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  SpacesHelper.verticalSpace(10),
                  CustomButton(
                    text: btnTitle,
                    onPressed: onPressed,
                  ),
                  //SpacesHelper.verticalSpace(10),
                ],
              ),
            ));
  }
}
