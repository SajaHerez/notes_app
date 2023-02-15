import 'package:flutter/material.dart';
import 'package:notes_app/DI/locater.dart';

import '../../utilities/routing/RouterNamed.dart';
import '../../utilities/routing/RoutingUilites.dart';
import '../../utilities/validation/validation.dart';
import '../../utilities/widgets/snackbar.dart';
import '../api/Endpoints.dart';
import '../api/auth_api.dart';

class PasswordController {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final conformController = TextEditingController();
  final keyForm = GlobalKey<FormState>();
  final keyForm2 = GlobalKey<FormState>();
  AuthApi auth = getIt<AuthApi>();

  forgertPassword() async {
    if (Validation.validateForm(keyForm)) {
      final response = await auth.forgetPassword(
          path: Endpoint.forgetPassword, email: emailController.text);
      if (response.data['status'] == true) {
        MySnackBar.showInSnackBar("${response.data['code']}");
        RoutingUtil.push(RouterName.resetPasswordScreen);
      }
    }
  }

  resetPassword(String code) async {
    print(code);
    if (Validation.validateForm(keyForm2)) {
      final response = await auth.resetPassword(
          path: Endpoint.resetPassword,
          email: emailController.text,
          code: int.parse(code),
          password: passController.text,
          passwordConfirmation: conformController.text);
      // MySnackBar.showInSnackBar(response?.message as String);
      if (response.data['status'] == true) {
        RoutingUtil.pushReplacement(RouterName.loginScreen);
      }
    }
  }
}
