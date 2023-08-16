import 'package:flutter/material.dart';

import '../../utilities/style/appColors.dart';

// ignore: must_be_immutable
class ScaleButtom extends StatelessWidget {
  ScaleButtom(
      {super.key,
      required this.color,
      required this.onTap,
      required this.icon,
      this.margin});
  Color? color;
  void Function()? onTap;
  IconData? icon;
  EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin ?? const EdgeInsets.only(left: 25),
        height: 68,
        width: 68,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(5), color: color),
        child: Icon(
          icon,
          color: AppColors.white,
        ),
      ),
    );
  }
}
