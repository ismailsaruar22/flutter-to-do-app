import 'package:flutter/material.dart';
import 'package:todo_app/custom_widgets/task_data.dart';
import 'package:todo_app/screens/todo_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TodoScreen(),
      ),
    );
  }
}
