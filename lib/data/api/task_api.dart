import 'package:dio/dio.dart';
import 'dio_client.dart';

class TaskApi {
  DioClient client;
  TaskApi(this.client);

  Future<Response<dynamic>> createTask(
      {required String path, required String title}) async {
    final response = await client.dio.post(path,
        data: {'title': title},
        options: Options(headers: {"requiresToken": true}));
    return response;
  }

  Future<Response<dynamic>> readTasks({required String path}) async {
    final response = await client.dio
        .get(path, options: Options(headers: {"requiresToken": true}));

    return response;
  }

  Future<Response<dynamic>> updateTask(
      {required String path, required int id, required String title}) async {
    final response = await client.dio.put('$path/$id',
        options: Options(headers: {"requiresToken": true}),
        data: {'title': title});
    return response;
  }

  Future<Response<dynamic>> deleteTask(
      {required String path, required int id}) async {
    final response = await client.dio.delete(
      '$path/$id',
      options: Options(headers: {"requiresToken": true}),
    );
    return response;
  }
}
