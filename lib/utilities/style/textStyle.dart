import 'package:flutter/material.dart';

import 'appColors.dart';
import 'fontStyle.dart';

class TextStyles {
  TextStyles._();
  static TextStyle titleStyle = TextStyle(
    fontFamily: FontFamily.nunito,
    fontWeight: FontWeights.medium,
    color: AppColors.white,
    fontSize: FontSize.FS40,
    // height: LineHeight.LH43
  );
  static TextStyle subTitleStyle = TextStyle(
    fontFamily: FontFamily.nunito,
    fontWeight: FontWeights.semiBold,
    color: AppColors.white,
    fontSize: FontSize.FS43,
    //height: LineHeight.LH59
  );
  static TextStyle titleStyle2 = TextStyle(
    fontFamily: FontFamily.nunito,
    fontWeight: FontWeights.regular,
    color: AppColors.gray,
    fontSize: FontSize.FS24,
    //  height: LineHeight.LH32
  );
  static TextStyle titleStyle3 = TextStyle(
    fontFamily: FontFamily.nunito,
    fontWeight: FontWeights.semiBold,
    color: AppColors.white,
    fontSize: FontSize.FS25,
    //  height: LineHeight.LH32
  );
  static TextStyle dialogTitleStyle = TextStyle(
    fontFamily: FontFamily.nunito,
    fontWeight: FontWeights.semiBold,
    color: Color.fromARGB(255, 188, 187, 187),
    fontSize: FontSize.FS23,
    //  height: LineHeight.LH32
  );
  static TextStyle hintTextStyle1 = TextStyle(
    fontFamily: FontFamily.nunito,
    fontWeight: FontWeights.regular,
    color: AppColors.gray,
    fontSize: FontSize.FS16,
    // height: LineHeight.LH22
  );
  static TextStyle hintStyleWithUnderline = TextStyle(
    fontFamily: FontFamily.roboto,
    fontWeight: FontWeights.regular,
    color: AppColors.simeGreen,
    fontSize: FontSize.FS16,
    // height: LineHeight.LH19,
    decoration: TextDecoration.underline,
    decorationColor: AppColors.simeGreen,
  );
  static TextStyle hintTextStyle2 = TextStyle(
    fontFamily: FontFamily.nunito,
    fontWeight: FontWeights.semiBold,
    color: AppColors.simeGreen,
    fontSize: FontSize.FS16,
    // height: LineHeight.LH22,
  );
  static TextStyle snakTextStyle2 = TextStyle(
    fontFamily: FontFamily.nunito,
    fontWeight: FontWeights.bold,
    color: AppColors.simeGreen,
    fontSize: FontSize.FS17,
    // height: LineHeight.LH22,
  );
  static TextStyle btnTextStyle = TextStyle(
    fontFamily: FontFamily.nunito,
    fontWeight: FontWeights.semiBold,
    color: AppColors.white,
    fontSize: FontSize.FS17,
    //  height: LineHeight.LH22,
  );
  static TextStyle btnTextStyle2 = TextStyle(
    fontFamily: FontFamily.nunito,
    fontWeight: FontWeights.regular,
    color: AppColors.white,
    fontSize: FontSize.FS18,
    //  height: LineHeight.LH25,
  );
  static TextStyle errorTextStyle2 = TextStyle(
    fontFamily: FontFamily.nunito,
    fontWeight: FontWeights.regular,
    color: AppColors.gray,
    fontSize: FontSize.FS10,
    //  height: LineHeight.LH25,
  );
  static TextStyle descriptionTextStyle = TextStyle(
    fontFamily: FontFamily.nunito,
    fontWeight: FontWeights.regular,
    color: AppColors.midGray,
    fontSize: FontSize.FS15,
    //height: LineHeight.LH20,
  );
  static TextStyle imageDescriptionTextStyle = TextStyle(
    fontFamily: FontFamily.nunito,
    fontWeight: FontWeights.light,
    color: AppColors.white,
    fontSize: FontSize.FS20,
    //height: LineHeight.LH28,
  );
}
