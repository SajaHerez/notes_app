import 'package:dio/dio.dart';
import 'package:notes_app/DI/locater.dart';
import 'package:notes_app/utilities/widgets/snackbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utilities/error/serverError.dart';

class ErrorInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.headers.containsKey('requiresToken')) {
      options.headers.remove('requiresToken');
      SharedPreferences prefs = getIt<SharedPreferences>();
      String? token = prefs.getString('token');
      options.headers.addAll({"Authorization": "Bearer $token"});
    }
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    MySnackBar.showInSnackBar(response.data['message']);
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    final error = DioExceptions.fromDioError(err);
    MySnackBar.showInSnackBar(error.message);
  }
}
