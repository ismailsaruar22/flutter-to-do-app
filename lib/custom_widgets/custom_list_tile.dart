import 'package:flutter/material.dart';
import 'package:todo_app/custom_widgets/task.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/custom_widgets/task_data.dart';

import 'custom_list_view.dart';

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return MyListTile(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              onChanged: (checkboxState) {
                taskData.taskUpdate(taskData.tasks[index]);
              },
              onLongPressCallback: () {
                taskData.removeTask(taskData.tasks[index]);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
