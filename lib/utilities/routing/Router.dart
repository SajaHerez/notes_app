
import 'package:flutter/material.dart';

import '../../ui/layout/home/homeScreen.dart';
import '../../ui/layout/login/loginScreen.dart';
import '../../ui/layout/resetPassword/forgetPasswordScreen.dart';
import '../../ui/layout/resetPassword/resetPasswordScreen.dart';
import '../../ui/layout/signUp/signUpScreen.dart';
import '../../ui/layout/splashScreen.dart';
import 'RouterNamed.dart';
import 'RoutingUilites.dart';

class Routers {
  Routers._();
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouterName.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
       case RouterName.signUpScreen:
        return MaterialPageRoute(builder: (context) => SignUpScreen());
      case RouterName.loginScreen:
        return MaterialPageRoute(builder: (context) =>   LoginScreen());
       case RouterName.forgetPasswordScreen:
        return MaterialPageRoute(
            builder: (context) =>  ForgetPasswordScreen());
      case RouterName.resetPasswordScreen:
        return MaterialPageRoute(
            builder: (context) =>  ResetPasswordScreen());
             case RouterName.homeScreen:
        return MaterialPageRoute(
            builder: (context) =>  HomeScreen());
        //        case RouterName.sreachScreen:
        // return MaterialPageRoute(
        //     builder: (context) => const sreachScreen());
      default:
        return RoutingUtil.errorRoute();
    }
  }
}
