import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tasks/viewModels/task_view_model.dart';

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final taskViewModel = useProvider(taskViewModelProvider.notifier);
    return Scaffold(
      appBar: AppBar(),
      body: _taskList(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.edit),
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () async {
          await taskViewModel.addTask("test", null);
        },
      ),
    );
  }

  Widget _taskList() {
    final taskViewModel = useProvider(taskViewModelProvider.notifier);
    final taskState = useProvider(taskViewModelProvider);

    return ListView.builder(
      itemCount: taskState.tasks.length,
      itemBuilder: (BuildContext context, int index) {
        final task = taskState.tasks[index];

        return ListTile(
          title: Text(task.title),
        );
      },
    );
  }
}
