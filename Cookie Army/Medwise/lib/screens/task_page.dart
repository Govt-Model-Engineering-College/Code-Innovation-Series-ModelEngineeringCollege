import 'package:flutter/material.dart';

import '../models/task.dart';
import '../widgets/task_list.dart';
import '../widgets/date.dart';
import './new_task.dart';

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  final List<Task> _userTasks = [
    Task(
      title: 'Yoga',
      description: 'early morning',
      date: DateTime.now(),
      time: TimeOfDay.now(),
      tag: 'exercise',
    ),
    Task(
        title: 'Before Food Medicine',
        description: 'Vitamins',
        date: DateTime.now(),
        time: TimeOfDay.now(),
        tag: 'medicine',
        taskDone: false),
    Task(
      title: 'Oats for breakfast',
      description: 'Todays diet',
      date: DateTime.now(),
      time: TimeOfDay.now(),
      tag: 'diet',
    ),
    Task(
      title: 'After Food Medicines',
      description: '2 tablets',
      date: DateTime.now(),
      time: TimeOfDay.now(),
      tag: 'medicine',
    ),
    Task(
      title: 'Evening Walk 3km',
      description: 'leave at 4:00',
      date: DateTime.now(),
      time: TimeOfDay.now(),
      tag: 'exercise',
    ),
  ];

  void _addNewTask(String taskTitle, String taskDescription, DateTime taskDate,
      TimeOfDay taskTime, String taskTag) {
    final newTask = Task(
      title: taskTitle,
      description: taskDescription,
      date: taskDate,
      time: taskTime,
      tag: taskTag,
    );

    setState(() {
      _userTasks.add(newTask);
    });
  }

  void _deleteTask(String title) {
    setState(() {
      _userTasks.removeWhere((task) {
        return task.title == title;
      });
    });
  }

  // List<Task> get _sortUserTasks{
  //   return {
  //     _userTasks.sort(
  //       (a, b) => a.time.format(context).compareTo((b.time.format(context))));
  //   return _userTasks;
  //   };
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Date(),
            Expanded(child: TaskList(_userTasks, _deleteTask)),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NewTask(_addNewTask)),
          );
        },
      ),
    );
  }
}
