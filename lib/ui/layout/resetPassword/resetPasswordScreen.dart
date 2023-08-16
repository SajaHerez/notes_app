import 'package:flutter/material.dart';
import 'package:notes_app/DI/locater.dart';
import '../../../data/controller/password_controller.dart';
import '../../../utilities/constant/pathes.dart';
import '../../../utilities/style/appColors.dart';
import '../../../utilities/style/spaces.dart';
import '../../../utilities/style/textStyle.dart';
import '../../../utilities/validation/validation.dart';
import '../../widgets/customButton.dart';
import '../../widgets/customTextField.dart';
import '../../widgets/customTitle.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

// ignore: must_be_immutable
class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({super.key});
  final pinCodeController = TextEditingController();
  PasswordController passwordController2 = getIt<PasswordController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 25, left: 25, top: 70),
              child: Form(
                key: passwordController2.keyForm2,
                child: Column(children: [
                  const CustomTitle(text1: " Reset", text2: "Password"),
                  SpacesHelper.verticalSpace(40),
                  PinCodeTextField(
                    controller: pinCodeController,
                    hintCharacter: "*",
                    textStyle: TextStyles.btnTextStyle2,
                    length: 4,
                    animationType: AnimationType.fade,
                    animationDuration: const Duration(milliseconds: 300),
                    onChanged: (value) {},
                    appContext: context,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(50),
                      activeColor: AppColors.lightGray,
                      selectedColor: AppColors.simeGreen,
                      inactiveColor: AppColors.lightGray,
                      fieldHeight: 50,
                      fieldWidth: 70,
                    ),
                  ),
                  SpacesHelper.verticalSpace(20),
                  CustomTextField(
                    hintText: "Password",
                    path: "${Pathes.iconPath}Lock${Extension.png}",
                    validator: Validation.passwordValidation,
                    controller: passwordController2.passController,
                  ),
                  SpacesHelper.verticalSpace(14),
                  CustomTextField(
                    hintText: "Confirm Password",
                    path: "${Pathes.iconPath}Lock${Extension.png}",
                    controller: passwordController2.conformController,
                    validator: (confirmPass) {
                      return Validation.confirmPassword(
                          passwordController2.passController.text,
                          passwordController2.conformController.text);
                    },
                  ),
                  SpacesHelper.verticalSpace(45),
                  CustomButton(
                    text: "Send",
                    onPressed: () {
                      passwordController2.resetPassword(pinCodeController.text);
                    },
                  ),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
