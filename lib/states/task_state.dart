import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tasks/models/task.dart';

part 'task_state.freezed.dart';

@freezed
class TaskState with _$TaskState {
  const TaskState._();
  const factory TaskState({
    @Default([]) List<Task> tasks,
  }) = _TaskState;
}
