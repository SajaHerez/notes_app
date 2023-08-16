import 'task.dart';

class TaskResponse {
  List<Task> tasks;
  TaskResponse({required this.tasks});
  factory TaskResponse.fromJson(Map<String, dynamic> json) {
    List<dynamic> list = json['data'];
    return TaskResponse(tasks: list.map((x) => Task.fromJson(x)).toList());
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = Map();
    // ignore: unnecessary_null_comparison
    if (tasks != null) {
      data['data'] = tasks.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
