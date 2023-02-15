import 'package:dio/dio.dart';
import 'interceptor.dart';
import 'Endpoints.dart';
import 'confg.dart';

class DioClient {
  Dio dio;
  DioClient(this.dio) {
    dio
      ..options.baseUrl = Endpoint.baseUrl
      ..options.connectTimeout = DioConfg.connectTimeout
      ..options.receiveTimeout = DioConfg.receiveTimeout
      ..options.sendTimeout = DioConfg.sendTimeout
      ..options.responseType = ResponseType.json;
    dio.interceptors.add(ErrorInterceptor());
  }
}
