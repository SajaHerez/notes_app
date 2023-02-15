class Endpoint {
  Endpoint._();
  static String baseUrl = "http://demo-api.mr-dev.tech/api";
  static String studentAuth = "/students/auth/";
  static String register = "$studentAuth/register";
  static String login = "$studentAuth/login";
  static String forgetPassword = "$studentAuth/forget-password";
  static String resetPassword = "$studentAuth/reset-password";
  static String logout = "$studentAuth/logout";
  static String tasks = "/tasks";
}
