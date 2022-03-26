import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/custom_widgets/custom_list_tile.dart';
import 'package:todo_app/screens/add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/custom_widgets/task_data.dart';

class TodoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal.shade900,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskScreen(),
              elevation: 20.0,
              isScrollControlled: true,
              backgroundColor: Colors.teal.shade900);
        },
        child: const Icon(Icons.add),
      ),
      backgroundColor: Colors.teal.shade800,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.teal.shade800,
            padding: const EdgeInsets.only(
                top: 40, left: 30, bottom: 30.0, right: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    color: Colors.teal,
                  ),
                ),
                const Text(
                  "To-Do",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w700),
                ),
                const Text(
                  "a.k.a Things I want to do But eventually I won't do!",
                  style: TextStyle(color: Colors.white54, fontSize: 15.0),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: const TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 15.0),
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
              ),
              child: MyListView(),
            ),
          )
        ],
      ),
    );
  }
}
