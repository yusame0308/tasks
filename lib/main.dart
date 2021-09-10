import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tasks/models/task.dart';
import 'package:tasks/viewModels/task_controller.dart';

void main() {
  runApp(ProviderScope(child: TasksApp()));
}

final taskProvider = StateNotifierProvider<TaskStateNotifier, Task>(
    (ref) => TaskStateNotifier());
List<Task> tasks = [];

class TasksApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasks',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("たすくす"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
        onPressed: () {
          tasks.add(Task(id: "id", title: "test"));
        },
      ),
      body: TaskList(),
    );
  }
}

class TaskList extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final state = useProvider(taskProvider);
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Text(state.title);
      },
      itemCount: tasks.length,
    );
  }
}
