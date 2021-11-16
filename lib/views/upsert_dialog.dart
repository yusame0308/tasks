import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tasks/viewModels/task_view_model.dart';

class UpsertDialog extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final taskViewModel = useProvider(taskViewModelProvider.notifier);
    final dialogWidth = MediaQuery.of(context).size.width * 3 / 4;

    return Dialog(
      insetPadding: EdgeInsets.zero,
      child: Container(
        color: Colors.black,
        width: dialogWidth,
        height: dialogWidth * 3 / 4,
      ),
    );
  }
}
