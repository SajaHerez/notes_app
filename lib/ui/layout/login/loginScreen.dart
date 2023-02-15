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

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final RegistrationController loginController =
      getIt.get<RegistrationController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 25, left: 25, top: 80),
          child: SingleChildScrollView(
            child: Form(
              key: loginController.keyForm,
              child: Column(
                children: [
                  const CustomTitle(text1: "Welcome", text2: "back"),
                  SpacesHelper.verticalSpace(15),
                  Image.asset("${Pathes.iconPath}noteX172${Extension.png}"),
                  SpacesHelper.verticalSpace(20),
                  CustomTextField(
                    hintText: "example@gmail.com",
                    path: "${Pathes.iconPath}Profile${Extension.png}",
                    validator: Validation.emailValidation,
                    controller: loginController.emailController,
                  ),
                  SpacesHelper.verticalSpace(10),
                  CustomTextField(
                    hintText: "Password",
                    path: "${Pathes.iconPath}Lock${Extension.png}",
                    validator: Validation.passwordValidation,
                    controller: loginController.passController,
                  ),
                  SpacesHelper.verticalSpace(10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        RoutingUtil.push(RouterName.forgetPasswordScreen);
                      },
                      child: Text(
                        "Forget password?",
                        style: TextStyles.hintTextStyle1,
                      ),
                    ),
                  ),
                  SpacesHelper.verticalSpace(70),
                  CustomButton(
                    text: "Login",
                    onPressed: () async {
                      await loginController.login();
                      // Map<String, dynamic>? map = await loginController.login();
                      // if (map?['status'] == true) {
                      //   context
                      //       .read<StudentProvider>()
                      //       .setStudent(map?['student'] as Student);
                      //   MySharedPreference pref = MySharedPreference();
                      //   pref.setIsLogged(true);
                      //   RoutingUtil.pushReplacement(RouterName.homeScreen);
                      // }
                    },
                  ),
                  SpacesHelper.verticalSpace(70),
                  Wrap(
                    children: [
                      Text(
                        "Have an account?",
                        style: TextStyles.hintTextStyle1,
                      ),
                      GestureDetector(
                          onTap: () {
                            RoutingUtil.push(RouterName.signUpScreen);
                          },
                          child: Text(
                            " Sign Up",
                            style: TextStyles.hintStyleWithUnderline,
                          ))
                    ],
                  ),
                  SpacesHelper.verticalSpace(30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
