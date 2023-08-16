import 'package:flutter/material.dart';
import 'package:notes_app/DI/locater.dart';
import '../../../data/controller/password_controller.dart';
import '../../../utilities/constant/pathes.dart';
import '../../../utilities/style/spaces.dart';
import '../../../utilities/style/textStyle.dart';
import '../../../utilities/validation/validation.dart';
import '../../widgets/customButton.dart';
import '../../widgets/customTextField.dart';
import '../../widgets/customTitle.dart';

// ignore: must_be_immutable
class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({super.key});
  PasswordController passwordController = getIt<PasswordController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 25, left: 25, top: 100),
            child: Form(
                key: passwordController.keyForm,
              child: Column(children: [
                const CustomTitle(text1: "Forget", text2: "Password"),
                Text(
                  "Enter the email associated with your account and we'll send an email with instructions to reset your password!",
                  style: TextStyles.descriptionTextStyle,
                  textAlign: TextAlign.center,
                ),
                SpacesHelper.verticalSpace(70),
                CustomTextField(
                  hintText: "Email",
                  path: "${Pathes.iconPath}email1${Extension.png}",
                  validator: Validation.emailValidation,
                  controller: passwordController.emailController,
                ),
                SpacesHelper.verticalSpace(45),
                CustomButton(
                  text: "Send",
                  onPressed: () {
                    passwordController.forgertPassword();
                  },
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
