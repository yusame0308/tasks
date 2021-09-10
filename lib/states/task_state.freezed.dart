// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'task_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TaskStateTearOff {
  const _$TaskStateTearOff();

  _TaskState call({List<Task> tasks = const []}) {
    return _TaskState(
      tasks: tasks,
    );
  }
}

/// @nodoc
const $TaskState = _$TaskStateTearOff();

/// @nodoc
mixin _$TaskState {
  List<Task> get tasks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskStateCopyWith<TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res>;
  $Res call({List<Task> tasks});
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res> implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  final TaskState _value;
  // ignore: unused_field
  final $Res Function(TaskState) _then;

  @override
  $Res call({
    Object? tasks = freezed,
  }) {
    return _then(_value.copyWith(
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }
}

/// @nodoc
abstract class _$TaskStateCopyWith<$Res> implements $TaskStateCopyWith<$Res> {
  factory _$TaskStateCopyWith(
          _TaskState value, $Res Function(_TaskState) then) =
      __$TaskStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Task> tasks});
}

/// @nodoc
class __$TaskStateCopyWithImpl<$Res> extends _$TaskStateCopyWithImpl<$Res>
    implements _$TaskStateCopyWith<$Res> {
  __$TaskStateCopyWithImpl(_TaskState _value, $Res Function(_TaskState) _then)
      : super(_value, (v) => _then(v as _TaskState));

  @override
  _TaskState get _value => super._value as _TaskState;

  @override
  $Res call({
    Object? tasks = freezed,
  }) {
    return _then(_TaskState(
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }
}

/// @nodoc

class _$_TaskState extends _TaskState {
  const _$_TaskState({this.tasks = const []}) : super._();

  @JsonKey(defaultValue: const [])
  @override
  final List<Task> tasks;

  @override
  String toString() {
    return 'TaskState(tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskState &&
            (identical(other.tasks, tasks) ||
                const DeepCollectionEquality().equals(other.tasks, tasks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tasks);

  @JsonKey(ignore: true)
  @override
  _$TaskStateCopyWith<_TaskState> get copyWith =>
      __$TaskStateCopyWithImpl<_TaskState>(this, _$identity);
}

abstract class _TaskState extends TaskState {
  const factory _TaskState({List<Task> tasks}) = _$_TaskState;
  const _TaskState._() : super._();

  @override
  List<Task> get tasks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TaskStateCopyWith<_TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}
