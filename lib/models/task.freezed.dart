// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
class _$TaskTearOff {
  const _$TaskTearOff();

  _Task call(
      {int? id,
      required String title,
      @JsonKey(name: 'is_done') bool isDone = false,
      int minutes = 0}) {
    return _Task(
      id: id,
      title: title,
      isDone: isDone,
      minutes: minutes,
    );
  }

  Task fromJson(Map<String, Object> json) {
    return Task.fromJson(json);
  }
}

/// @nodoc
const $Task = _$TaskTearOff();

/// @nodoc
mixin _$Task {
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_done')
  bool get isDone => throw _privateConstructorUsedError;
  int get minutes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String title,
      @JsonKey(name: 'is_done') bool isDone,
      int minutes});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res> implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  final Task _value;
  // ignore: unused_field
  final $Res Function(Task) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? isDone = freezed,
    Object? minutes = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      minutes: minutes == freezed
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$TaskCopyWith(_Task value, $Res Function(_Task) then) =
      __$TaskCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String title,
      @JsonKey(name: 'is_done') bool isDone,
      int minutes});
}

/// @nodoc
class __$TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$TaskCopyWith<$Res> {
  __$TaskCopyWithImpl(_Task _value, $Res Function(_Task) _then)
      : super(_value, (v) => _then(v as _Task));

  @override
  _Task get _value => super._value as _Task;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? isDone = freezed,
    Object? minutes = freezed,
  }) {
    return _then(_Task(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      minutes: minutes == freezed
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Task with DiagnosticableTreeMixin implements _Task {
  const _$_Task(
      {this.id,
      required this.title,
      @JsonKey(name: 'is_done') this.isDone = false,
      this.minutes = 0});

  factory _$_Task.fromJson(Map<String, dynamic> json) =>
      _$_$_TaskFromJson(json);

  @override
  final int? id;
  @override
  final String title;
  @override
  @JsonKey(name: 'is_done')
  final bool isDone;
  @JsonKey(defaultValue: 0)
  @override
  final int minutes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Task(id: $id, title: $title, isDone: $isDone, minutes: $minutes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Task'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('isDone', isDone))
      ..add(DiagnosticsProperty('minutes', minutes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Task &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.isDone, isDone) ||
                const DeepCollectionEquality().equals(other.isDone, isDone)) &&
            (identical(other.minutes, minutes) ||
                const DeepCollectionEquality().equals(other.minutes, minutes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(isDone) ^
      const DeepCollectionEquality().hash(minutes);

  @JsonKey(ignore: true)
  @override
  _$TaskCopyWith<_Task> get copyWith =>
      __$TaskCopyWithImpl<_Task>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TaskToJson(this);
  }
}

abstract class _Task implements Task {
  const factory _Task(
      {int? id,
      required String title,
      @JsonKey(name: 'is_done') bool isDone,
      int minutes}) = _$_Task;

  factory _Task.fromJson(Map<String, dynamic> json) = _$_Task.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_done')
  bool get isDone => throw _privateConstructorUsedError;
  @override
  int get minutes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TaskCopyWith<_Task> get copyWith => throw _privateConstructorUsedError;
}
