import 'dart:async';

import 'package:flutter/material.dart';

import '../../DI/locater.dart';
import '../../data/local/mysharedPrefernce.dart';
import '../../utilities/constant/pathes.dart';
import '../../utilities/routing/RouterNamed.dart';
import '../../utilities/routing/RoutingUilites.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), (() => controllFlow()));
    super.initState();
  }

  controllFlow() async {
    MySharedPreference pref = getIt<MySharedPreference>();
    bool isnew = await pref.IsNewLuncher() ?? false;
    bool isLogged = await pref.IsLogged() ?? false;
    if (isnew) {
      RoutingUtil.pushReplacement(RouterName.signUpScreen);
    } else if (isLogged) {
      RoutingUtil.pushReplacement(RouterName.homeScreen);
    } else {
      //  RoutingUtil.pushReplacement(RouterName.loginScreen);
      RoutingUtil.pushReplacement(RouterName.homeScreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("${Pathes.iconPath}noteSplash${Extension.png}"),
      ),
    );
  }
}
