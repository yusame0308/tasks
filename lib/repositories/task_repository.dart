import 'package:tasks/databases/task_database.dart';
import 'package:tasks/models/task.dart';

class TaskRepository {
  final TaskDatabase _taskDatabase;

  TaskRepository(this._taskDatabase);

  Future<List<Task>> getTasks() async {
    return _taskDatabase.getTasks();
  }

  Future<Task> addTask(Task task) async {
    return _taskDatabase.insert(task);
  }

  Future<void> updateTask(Task task) async {
    return _taskDatabase.update(task);
  }

  Future<void> deleteTask(int id) async {
    return _taskDatabase.delete(id);
  }
}
