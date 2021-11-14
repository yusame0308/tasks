// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Task _$_$_TaskFromJson(Map<String, dynamic> json) {
  return _$_Task(
    id: json['id'] as int?,
    title: json['title'] as String,
    isDone: json['is_done'] as int,
    minutes: json['minutes'] as int?,
  );
}

Map<String, dynamic> _$_$_TaskToJson(_$_Task instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'is_done': instance.isDone,
      'minutes': instance.minutes,
    };
