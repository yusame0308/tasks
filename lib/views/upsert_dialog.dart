import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tasks/viewModels/task_view_model.dart';

class UpsertDialog extends HookWidget {
  final titleController = TextEditingController();
  final minutesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final taskViewModel = useProvider(taskViewModelProvider.notifier);
    final dialogWidth = MediaQuery.of(context).size.width * 3 / 4;

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      child: Stack(
        alignment: Alignment.center,
        children: [
          GestureDetector(
            onTap: () {
              // TODO: TextFieldを両方閉じる
            },
            child: Container(
              color: Colors.white.withOpacity(0.01),
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Container(
            width: dialogWidth,
            height: dialogWidth * 3 / 4,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(18.0)),
            ),
            child: Column(
              children: [
                TextField(
                  controller: titleController,
                  autocorrect: false,
                  decoration: InputDecoration(
                    hintText: 'タイトル',
                  ),
                ),
                TextField(
                  controller: minutesController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                    hintText: '所要時間',
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // TODO: DBに追加
                  },
                  child: Text('追加'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
