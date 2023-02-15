class User {
  User({
    required this.id,
    required this.fullName,
    required this.email,
    required this.gender,
    this.verificationCode,
    this.fcmToken,
    required this.token,
    required this.refreshToken,
    required this.isActive,
  });

  int id;
  String fullName;
  String email;
  String gender;
  dynamic verificationCode;
  dynamic fcmToken;
  String token;
  String refreshToken;
  bool isActive;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        fullName: json["full_name"],
        email: json["email"],
        gender: json["gender"],
        verificationCode: json["verification_code"],
        fcmToken: json["fcm_token"],
        token: json["token"],
        refreshToken: json["refresh_token"],
        isActive: json["is_active"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "full_name": fullName,
        "email": email,
        "gender": gender,
        "verification_code": verificationCode,
        "fcm_token": fcmToken,
        "token": token,
        "refresh_token": refreshToken,
        "is_active": isActive,
      };
}
