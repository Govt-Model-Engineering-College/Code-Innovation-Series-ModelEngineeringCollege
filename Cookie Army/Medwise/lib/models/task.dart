import 'package:flutter/material.dart';

class Task {
  final String title;
  final String description;
  final DateTime date;
  final TimeOfDay time;
  final String tag;
  bool taskDone;

  Task(
      {this.title,
      this.description,
      this.date,
      this.time,
      this.tag,
      this.taskDone = false});
}
