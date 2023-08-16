
import 'package:flutter/material.dart';
import 'package:notes_app/DI/locater.dart';
import 'package:notes_app/data/api/Endpoints.dart';
import 'package:notes_app/data/model/user.dart';
import '../../utilities/routing/RouterNamed.dart';
import '../../utilities/routing/RoutingUilites.dart';
import '../../utilities/validation/validation.dart';
import '../api/auth_api.dart';
import '../local/mysharedPrefernce.dart';

class RegistrationController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final genderController = TextEditingController();
  final keyForm = GlobalKey<FormState>();
  final keyForm2 = GlobalKey<FormState>();
  final auth = getIt<AuthApi>();

  void register() async {
    if (Validation.validateForm(keyForm2)) {
      final response = await auth.register(
          path: Endpoint.register,
          fName: nameController.text,
          email: emailController.text,
          password: passController.text,
          gender: genderController.text);
      if (response.data['status'] == true) {
        RoutingUtil.pushReplacement(RouterName.loginScreen);
        _dispose();
      }
    }
  }

  Future<void> login() async {
    if (Validation.validateForm(keyForm)) {
      final response = await auth.login(
          path: Endpoint.login,
          email: emailController.text,
          password: passController.text);
      if (response.data['status'] == true) {
        User user = User.fromJson(response.data['object']);
        getIt<MySharedPreference>().saveUserData(user);
        getIt<MySharedPreference>().setIsLogged(true);
        RoutingUtil.pushReplacement(RouterName.homeScreen);
        _dispose();
      }
    }
  }

  _dispose() {
    nameController.dispose();
    emailController.dispose();
    passController.dispose();
    genderController.dispose();
  }

  logout() async {
    final response = await auth.logout(path: Endpoint.logout);
    if (response.data['status'] == true) {
      getIt<MySharedPreference>().removeStudentData();
      getIt<MySharedPreference>().setIsLogged(false);
      RoutingUtil.pushReplacement(RouterName.splashScreen);
    }
  }
}
