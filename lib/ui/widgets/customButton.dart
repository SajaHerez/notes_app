import 'package:flutter/material.dart';

import '../../utilities/style/appColors.dart';
import '../../utilities/style/textStyle.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onPressed});
  final String text;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        height: 44,
        width: 325,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            gradient: const LinearGradient(
              colors: [
                AppColors.simeblue,
                AppColors.lightGreen,
              ],
            )),
        child: Text(
          text,
          style: TextStyles.btnTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
