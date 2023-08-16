import 'package:flutter/material.dart';

import '../../DI/locater.dart';
import '../../data/controller/auth_controller.dart';
import '../../utilities/constant/pathes.dart';
import '../../utilities/style/appColors.dart';
import '../../utilities/style/textStyle.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: AppColors.simeBlack,
        title: Text(
          'Notes',
          style: TextStyles.subTitleStyle,
        ),
        actions: [
          IconButton(
              iconSize: 50,
              splashColor: AppColors.simeGreen.withOpacity(.3),
              onPressed: () {},
              icon: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.simeGreen.withOpacity(.2)),
                child: Image.asset(
                  "${Pathes.iconPath}Vector${Extension.png}",
                  height: 18,
                  width: 18,
                  color: AppColors.simeGreen,
                ),
              )),
          IconButton(
              iconSize: 74,
              splashColor: AppColors.simeGreen.withOpacity(.3),
              onPressed: () {
                getIt<RegistrationController>().logout();
              },
              icon: 
               Image.asset(
                "${Pathes.iconPath}noteX74${Extension.png}",
                fit: BoxFit.cover,
                height: 74,
                width: 74,
              )
              )
        ],
      ),
    );
  }
}
