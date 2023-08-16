import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:notes_app/ui/widgets/scale_btn.dart';

import '../../utilities/style/appColors.dart';
import '../../utilities/style/textStyle.dart';

// ignore: must_be_immutable
class CustomListTile extends StatelessWidget {
  CustomListTile(
      {super.key,
      required this.title,
      required this.rightOnTap,
      required this.leftOnTap});
  final String title;
  void Function()? rightOnTap;
  void Function()? leftOnTap;
  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        extentRatio: .3,
        children: [
          ScaleButtom(
            color: AppColors.simeRed,
            onTap: rightOnTap,
            icon: Icons.delete,
          )
        ],
      ),
      startActionPane: ActionPane(
        extentRatio: .25,
        motion: const ScrollMotion(),
        children: [
          ScaleButtom(
            color: AppColors.simeGreen,
            onTap: leftOnTap,
            icon: Icons.edit,
            margin: const EdgeInsets.only(right: 10),
          )
        ],
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        margin: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [
                AppColors.simegreen2,
                AppColors.simeblue2,
              ],
            )),
        child: ListTile(title: Text(title, style: TextStyles.titleStyle3)),
      ),
    );
  }
}
