import 'package:flutter/cupertino.dart';
import 'package:notes_app/data/api/Endpoints.dart';
import '../../DI/locater.dart';
import '../api/task_api.dart';
import '../model/task.dart';
import '../model/task_list.dart';

enum NotifierState { initial, loading, loaded }

class TaskProvider with ChangeNotifier {
  List<Task> tasks = [];
  final taskapi = getIt<TaskApi>();
  NotifierState _state = NotifierState.initial;
  NotifierState get state => _state;
  void _setState(NotifierState state) {
    _state = state;
  }

  void addTask(String title) async {
    final response =
        await taskapi.createTask(path: Endpoint.tasks, title: title);

    if (response.data['status'] == true) {
      Task t = Task.fromJson(response.data['data']);
      tasks.add(t);
      notifyListeners();
    }
  }

  void removeTask(int id) async {
    final response = await taskapi.deleteTask(path: Endpoint.tasks, id: id);
    if (response.data['status'] == true) {
      final t = tasks.firstWhere((element) => element.id == id);
      tasks.remove(t);
      notifyListeners();
    }
  }

  void updateTask(int id, String title) async {
    final response =
        await taskapi.updateTask(path: Endpoint.tasks, id: id, title: title);
    if (response.data['status'] == true) {
      final t = tasks.firstWhere((element) => element.id == id);
      t.title = title;
      tasks[tasks.indexOf(t)] = t;
      notifyListeners();
    }
  }

  void getAllTasks() async {
    _setState(NotifierState.loading);
    final response = await taskapi.readTasks(path: Endpoint.tasks);
    if (response.data['status'] == true) {
      tasks.clear();
      final re = TaskResponse.fromJson(response.data);
      tasks = re.tasks;
      // tasks.map(
      //   (e) => print(e.title),
      // );
      _filtering();
      _setState(NotifierState.loaded);
      notifyListeners();
    }
  }

  void _filtering() {
    tasks.sort(((a, b) {
      return DateTime.parse(a.created_at)
          .compareTo(DateTime.parse(b.created_at));
    }));
  }
}
