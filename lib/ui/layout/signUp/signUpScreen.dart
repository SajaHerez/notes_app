import 'package:flutter/material.dart';
import 'package:notes_app/DI/locater.dart';
import '../../../data/controller/auth_controller.dart';
import '../../../utilities/constant/pathes.dart';
import '../../../utilities/routing/RouterNamed.dart';
import '../../../utilities/routing/RoutingUilites.dart';
import '../../../utilities/style/spaces.dart';
import '../../../utilities/style/textStyle.dart';
import '../../../utilities/validation/validation.dart';
import '../../widgets/customButton.dart';
import '../../widgets/customTextField.dart';
import '../../widgets/customTitle.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final RegistrationController registrationController =
      getIt<RegistrationController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(right: 25, left: 25, top: 40),
              child: Form(
                key: registrationController.keyForm2,
                child: Column(
                  children: [
                    const CustomTitle(text1: "Sign", text2: "Up"),
                    Text(
                      "Create a new account!",
                      style: TextStyles.titleStyle2,
                    ),
                    SpacesHelper.verticalSpace(60),
                    CustomTextField(
                      hintText: "Full name",
                      path: "${Pathes.iconPath}Profile${Extension.png}",
                      validator: Validation.nameValidation,
                      controller: registrationController.nameController,
                    ),
                    SpacesHelper.verticalSpace(14),
                    CustomTextField(
                      hintText: "Email",
                      path: "${Pathes.iconPath}email1${Extension.png}",
                      validator: Validation.emailValidation,
                      controller: registrationController.emailController,
                    ),
                    SpacesHelper.verticalSpace(14),
                    CustomTextField(
                      hintText: "Password",
                      path: "${Pathes.iconPath}Lock${Extension.png}",
                      validator: Validation.passwordValidation,
                      controller: registrationController.passController,
                    ),
                    SpacesHelper.verticalSpace(14),
                    CustomTextField(
                      hintText: "Gender",
                      path: "${Pathes.iconPath}email1${Extension.png}",
                      validator: Validation.genderValidation,
                      controller: registrationController.genderController,
                    ),
                    SpacesHelper.verticalSpace(90),
                    CustomButton(
                      text: "Sign Up",
                      onPressed: () {
                        registrationController.register();
                      },
                    ),
                    SpacesHelper.verticalSpace(80),
                    Wrap(
                      children: [
                        Text(
                          "Have an account?",
                          style: TextStyles.hintTextStyle1,
                        ),
                        GestureDetector(
                          onTap: () {
                            RoutingUtil.push(RouterName.loginScreen);
                          },
                          child: Text(
                            " Log In",
                            style: TextStyles.hintTextStyle2,
                          ),
                        )
                      ],
                    ),
                    SpacesHelper.verticalSpace(20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
