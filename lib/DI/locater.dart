import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data/api/auth_api.dart';
import '../data/api/dio_client.dart';
import '../data/api/task_api.dart';
import '../data/controller/auth_controller.dart';
import '../data/controller/password_controller.dart';
import '../data/local/mysharedPrefernce.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<DioClient>(DioClient(getIt<Dio>()));
  getIt.registerSingleton<AuthApi>(AuthApi(getIt<DioClient>()));
   getIt.registerSingleton<TaskApi>(TaskApi(getIt<DioClient>()));
  await _initSharedPref();
  getIt.registerSingletonAsync<MySharedPreference>(
      () async => MySharedPreference(getIt<SharedPreferences>()));
  getIt.registerFactory<RegistrationController>(() => RegistrationController());
  getIt.registerSingleton<PasswordController>(PasswordController());
}

Future<void> _initSharedPref() async {
  SharedPreferences sharedPref = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(sharedPref);
}
