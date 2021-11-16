import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tasks/models/task.dart';
import 'package:tasks/viewModels/task_view_model.dart';
import 'package:tasks/views/upsert_dialog.dart';

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Flexible(
            child: _taskList(),
          ),
          _footer(context)
        ],
      ),
    );
  }

  Widget _footer(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      padding: EdgeInsets.fromLTRB(30, 0, 30, 20),
      color: Colors.teal,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "7個  125分",
              style: TextStyle(
                color: Colors.grey[300],
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: FloatingActionButton(
              child: const Icon(Icons.edit),
              backgroundColor: Colors.teal[400],
              foregroundColor: Colors.grey[300],
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return UpsertDialog();
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _taskList() {
    final taskViewModel = useProvider(taskViewModelProvider.notifier);
    final taskState = useProvider(taskViewModelProvider);

    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      itemCount: taskState.tasks.length,
      itemBuilder: (BuildContext context, int index) {
        final task = taskState.tasks[index];

        return _taskItem(task, index, taskViewModel);
      },
    );
  }

  Widget _taskItem(Task task, int index, TaskViewModelProvider taskViewModel) {
    return Card(
      child: Slidable(
        child: CheckboxListTile(
          contentPadding: EdgeInsets.fromLTRB(8.0, 8.0, 20.0, 8.0),
          title: Text(
            task.title,
            style: TextStyle(
                decoration: task.isDone == 1
                    ? TextDecoration.lineThrough
                    : TextDecoration.none),
          ),
          secondary: Text((task.minutes ?? "").toString()),
          value: task.isDone == 1 ? true : false,
          onChanged: (value) {
            taskViewModel.changeStatus(task);
          },
          controlAffinity: ListTileControlAffinity.leading,
        ),
        endActionPane: ActionPane(
          extentRatio: 0.3,
          motion: ScrollMotion(),
          children: [
            SlidableAction(
              flex: 1,
              label: '削除',
              backgroundColor: Colors.red,
              icon: Icons.delete,
              onPressed: (context) async {
                await taskViewModel.deleteTask(task.id!);
              },
            ),
          ],
        ),
      ),
    );
  }
}
