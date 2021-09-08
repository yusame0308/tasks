import 'package:state_notifier/state_notifier.dart';
import 'package:tasks/task.dart';

class TaskStateNotifier extends StateNotifier<Task> {
  TaskStateNotifier(): super(Task(name: "", isDone: false));

  void setName(String name) {
    state = state.copyWith(name: name);
  }

  void setTime(int time) {
    state = state.copyWith(time: time);
  }

  void toggle() {
    state = state.copyWith(isDone: !state.isDone);
  }
}