import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tasks/databases/task_database.dart';
import 'package:tasks/models/task.dart';
import 'package:tasks/repositories/task_repository.dart';
import 'package:tasks/states/task_state.dart';

final taskViewModelProvider =
    StateNotifierProvider<TaskViewModelProvider, TaskState>(
  (ref) => TaskViewModelProvider(
    ref.read,
    TaskRepository(TaskDatabase()),
  ),
);

class TaskViewModelProvider extends StateNotifier<TaskState> {
  TaskViewModelProvider(this._reader, this._taskRepository)
      : super(const TaskState()) {
    getTasks();
  }

  final Reader _reader;
  final TaskRepository _taskRepository;

  Future<void> addTask(String title, int? minutes) async {
    final task = await _taskRepository.addTask(Task(
      title: title,
      minutes: minutes ?? 0,
    ));

    state = state.copyWith(
      tasks: [task, ...state.tasks],
    );
  }

  Future<void> getTasks() async {
    final tasks = await _taskRepository.getTasks();

    state = state.copyWith(
      tasks: tasks,
    );
  }

  Future<void> updateTask(Task task, String? title, int? minutes) async {
    final newTask = task.copyWith(
      title: title ?? task.title,
      minutes: minutes ?? task.minutes,
    );

    await _taskRepository.updateTask(newTask);

    final tasks = state.tasks
        .map((task) => task.id == newTask.id ? newTask : task)
        .toList();

    state = state.copyWith(
      tasks: tasks,
    );
  }

  Future<void> changeStatus(Task task) async {
    final newTask = task.copyWith(
      isDone: task.isDone == 0 ? 1 : 0,
    );

    await _taskRepository.updateTask(newTask);

    final tasks = state.tasks
        .map((task) => task.id == newTask.id ? newTask : task)
        .toList();

    state = state.copyWith(
      tasks: tasks,
    );
  }

  Future<void> deleteTask(int taskId) async {
    await _taskRepository.deleteTask(taskId);

    final tasks = state.tasks.where((task) => task.id != taskId).toList();

    state = state.copyWith(
      tasks: tasks,
    );
  }
}
