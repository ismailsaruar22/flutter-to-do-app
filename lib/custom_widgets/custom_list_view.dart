import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final bool? isChecked;
  final String taskTitle;
  final void Function(bool?)? onChanged;
  final void Function()? onLongPressCallback;
  MyListTile(
      {this.isChecked,
      required this.taskTitle,
      this.onChanged,
      this.onLongPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked == true ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal,
        value: isChecked,
        onChanged: onChanged,
      ),
      onLongPress: onLongPressCallback,
    );
  }
}
