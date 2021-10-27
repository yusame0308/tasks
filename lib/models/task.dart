import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'task.freezed.dart';

@freezed
abstract class Task with _$Task {
  factory Task({
    int? id,
    required String title,
    @JsonKey(name: 'is_done') @Default(false) bool isDone,
    @Default(0) int minutes,
  }) = _Task;
}
