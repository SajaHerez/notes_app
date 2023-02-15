import 'package:dio/dio.dart';

import 'dio_client.dart';

class AuthApi {
  DioClient client;
  AuthApi(this.client);

  Future<Response> register(
      {required String path,
      required String fName,
      required String email,
      required String password,
      required String gender}) async {
    final response = await client.dio.post(path, data: {
      'full_name': fName,
      'email': email,
      'password': password,
      'gender': gender,
    });

    return response;
  }

  Future<Response> login({
    required String path,
    required String email,
    required String password,
  }) async {
    final response = await client.dio.post(path, data: {
      'email': email,
      'password': password,
    });

    return response;
  }

  Future<Response> forgetPassword({
    required String path,
    required String email,
  }) async {
    final response = await client.dio.post(path, data: {
      'email': email,
    });

    return response;
  }

  Future<Response> resetPassword(
      {required String path,
      required String email,
      required int code,
      required String password,
      required String passwordConfirmation}) async {
    final response = await client.dio.post(path, data: {
      'email': email,
      'code': code,
      'password': password,
      'password_confirmation': passwordConfirmation,
    });

    return response;
  }

  Future<Response> logout({required String path}) async {
    final response = await client.dio
        .get(path, options: Options(headers: {"requiresToken": true}));
    return response;
  }
}
