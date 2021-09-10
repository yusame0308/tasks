import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'task.freezed.dart';

@freezed
class Task with _$Task {
  const Task._();
  const factory Task({
    required String id,
    required String title,
    @Default(0) int isDone,
    int? time,
  }) = _Task;
}
