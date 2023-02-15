import 'package:flutter/material.dart';
import 'reg_exp.dart';

class Validation {
 static String? passwordValidation(String? password) {
    if (password!.isEmpty) {
      return "Enter The Password";
    }
    if (!passReg.hasMatch(password)) {
      return "Enter Valid Password,at least 8 characters";
    }
    return null;
  }

 static String? emailValidation(String? email) {
    if (email!.isEmpty) {
      return "Enter The Email";
    }
    if (!emailReg.hasMatch(email)) {
      return "Enter Valid Email(example@gmail.com)";
    }
    return null;
  }

static String? confirmPassword(String? password, String? conPassword) {
  if (conPassword!.isEmpty) {
    return " Enter The Password";
  }
  if (password!.compareTo(conPassword) != 0) {
    return "Confirm your Entered Password";
  }
  return null;
}

 static String? nameValidation(String? name) {
    if (name!.isEmpty) {
      return "Enter The Name";
    }
    if (!nameReg.hasMatch(name)) {
      return "Enter Valid Name(Jhon Alex)";
    }
    return null;
  }
static String? genderValidation(String? gender) {
    if (gender!.isEmpty) {
      return "Enter The Gender";
    }
    gender=gender.toUpperCase();
    if (!(gender.startsWith('F') || gender.startsWith('M'))) {
      return "Gender must be F/M";
    }
    return null;
  }

 static  bool validateForm(GlobalKey<FormState> formKey) {
    final form = formKey.currentState;
    return form!.validate() ? true : false;
  }
}
