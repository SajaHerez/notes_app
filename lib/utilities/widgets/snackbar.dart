import 'package:flutter/material.dart';

import '../style/appColors.dart';
import '../style/textStyle.dart';

class MySnackBar {
  MySnackBar._();
  static final GlobalKey<ScaffoldMessengerState> scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();

  static void showInSnackBar(String value) {
    scaffoldKey.currentState?.showSnackBar(SnackBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 5,
        backgroundColor: AppColors.lightGray,
        duration: const Duration(seconds: 10),
        // margin:const EdgeInsets.only(top:20) ,
        padding: const EdgeInsets.only(top: 20, left: 10, bottom: 20),
        content: Text(
          value,
          style: TextStyles.snakTextStyle2,
          textAlign: TextAlign.center,
        )));
  }
}
