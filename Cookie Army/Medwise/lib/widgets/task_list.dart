import 'package:flutter/material.dart';

import '../models/task.dart';

class TaskList extends StatefulWidget {
  final List<Task> displayedTasks;
  final Function deleteTask;

  TaskList(this.displayedTasks, this.deleteTask);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  // var done = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height / 1.5,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            var done = widget.displayedTasks[index].taskDone;
            return AnimatedOpacity(
              opacity: !done ? 1 : 0.4,
              duration: Duration(milliseconds: 200),
              child: Dismissible(
                // Delete task from list
                key: Key(widget.displayedTasks[index].title),
                background: slideLeftBackground(),
                confirmDismiss: (direction) async {
                  if (direction == DismissDirection.endToStart) {
                    final bool res = await showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: Text(
                                "Are you sure you want to delete ${widget.displayedTasks[index].title}?"),
                            actions: <Widget>[
                              FlatButton(
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(color: Colors.black),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              FlatButton(
                                child: Text(
                                  "Delete",
                                  style: TextStyle(color: Colors.red),
                                ),
                                onPressed: () {
                                  // !Delete task here
                                  widget.deleteTask(
                                      widget.displayedTasks[index].title);
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        });
                    return res;
                  }
                },
                child: Card(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.displayedTasks[index].title,
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                                Text(
                                  widget.displayedTasks[index].description,
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                                Text(
                                  widget.displayedTasks[index].time
                                      .format(context),
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                              ],
                            ),
                          ),
                        ),
                        IconButton(
                            icon: !done
                                ? Icon(
                                    Icons.lens_outlined,
                                    color: Theme.of(context).primaryColor,
                                  )
                                : Icon(
                                    Icons.check_circle,
                                    color: Theme.of(context).primaryColor,
                                  ),
                            onPressed: () {
                              setState(() {
                                widget.displayedTasks[index].taskDone =
                                    !widget.displayedTasks[index].taskDone;
                              });
                            })
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          itemCount: widget.displayedTasks.length,
        ),
      ),
    );
  }
}

Widget slideLeftBackground() {
  return Container(
    color: Colors.red,
    child: Align(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Icon(
            Icons.delete,
            color: Colors.white,
          ),
          Text(
            " Delete",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.right,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      alignment: Alignment.centerRight,
    ),
  );
}
