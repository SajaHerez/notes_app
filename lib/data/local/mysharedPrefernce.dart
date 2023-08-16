
import 'package:notes_app/data/model/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MySharedPreference {
  MySharedPreference(this.pref);
  SharedPreferences pref;
  void saveUserData(User student) async {
    pref.setInt("id", student.id);
    pref.setString("email", student.email);
    pref.setString("full_name", student.fullName);
    pref.setString("gender", student.gender);
    pref.setBool("is_active", student.isActive);
    pref.setString("token", student.token);
    pref.setString("refresh_token", student.refreshToken);
  }

  Future<User> getStudentData() async {
    int? id = pref.getInt("id");
    String? email = pref.getString("email");
    String? fullName = pref.getString("full_name");
    String? gender = pref.getString("gender");
    bool? isActive = pref.getBool("is_active");
    String? token = pref.getString("token");
    String? refreshToken = pref.getString("refresh_token");
    return User(
        id: id ?? 0,
        fullName: fullName ?? '',
        email: email ?? '',
        gender: gender ?? '',
        fcmToken: refreshToken,
        token: token ?? '',
        refreshToken: refreshToken ?? '',
        isActive: isActive ?? false);
  }

  removeStudentData() async {
    pref.remove("id");
    pref.remove("email");
    pref.remove("full_name");
    pref.remove("gender");
    pref.remove("is_active");
    pref.remove("token");
    pref.remove("refresh_token");
  }

  void setIsDarkMode(bool isDarkMode) async {
    await pref.setBool("is_dark", isDarkMode);
  }

  Future<String?> getToken() async {
    pref = await SharedPreferences.getInstance();
    String? token = pref.getString("token");
    return token;
  }

  Future<bool?> IsNewLuncher() async {
    if (pref.containsKey("is_new_Luncher")) {
      return false;
    } else {
      await pref.setBool("is_new_Luncher", false);
      return true;
    }
  }

  void setIsLogged(bool isLogged) async {
    await pref.setBool("is_logged", isLogged);
  }

  Future<bool?> IsLogged() async {
    if (pref.containsKey("is_logged")) {
      return pref.getBool("is_logged");
    }
    return false;
  }
}
