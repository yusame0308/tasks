import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'task.freezed.dart';

@freezed
class Task with _$Task {
  const Task._();
  const factory Task({
    required String name,
    required bool isDone,
    int? time,
  }) = _Task;
}
