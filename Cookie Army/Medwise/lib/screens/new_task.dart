import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewTask extends StatefulWidget {
  final Function addTask;

  NewTask(this.addTask); // addNewTask from task_page.dart

  @override
  _NewTaskState createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  final _titleController = TextEditingController();
  final _descController = TextEditingController();
  DateTime _selectedDate;
  TimeOfDay _selectedTime;
  String _selectedTag = 'medicine';

  void _presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2022),
    ).then((pickedDate) {
      if (pickedDate == null) return;
      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }

  void _presentTimePicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((pickedTime) {
      if (pickedTime == null) return;
      setState(() {
        _selectedTime = pickedTime;
      });
    });
  }

  void _submitData() {
    final enteredTitle = _titleController.text;
    final enteredDesc = _descController.text;

    if (enteredTitle.isEmpty || _selectedDate == null || _selectedTime == null)
      return;

    widget.addTask(
        enteredTitle, enteredDesc, _selectedDate, _selectedTime, _selectedTag);

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            }),
        actions: [
          IconButton(icon: Icon(Icons.done), onPressed: () {}),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 140,
                child: Center(
                  child: Text(
                    'New Task',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                color: Theme.of(context).primaryColor,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // Date Picker Section
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              _selectedDate == null
                                  ? 'No Date Chosen!'
                                  : DateFormat.yMMMd().format(_selectedDate),
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          OutlineButton(
                            borderSide: BorderSide(color: Colors.purple),
                            onPressed: _presentDatePicker,
                            child: Text(
                              'Choose Date',
                              style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    TextField(
                      controller: _titleController,
                      onSubmitted: null,
                      decoration: InputDecoration(
                        labelText: 'Title',
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextField(
                      controller: _descController,
                      onSubmitted: null,
                      decoration: InputDecoration(
                        labelText: 'Description',
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    OutlineButton(
                      // Time Picker section
                      borderSide: BorderSide(color: Colors.grey),
                      padding: EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 24,
                      ),
                      onPressed: _presentTimePicker,
                      child: _selectedTime == null
                          ? Text(
                              'Choose Time',
                              style: Theme.of(context).textTheme.subtitle1,
                            )
                          : Text(
                              _selectedTime.format(context),
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                    ),
                    // Repeat section
                    // Container(
                    //   child: Row(
                    //     children: [
                    //       Expanded(
                    //         child: Text(
                    //           'Repeat',
                    //           style: Theme.of(context).textTheme.subtitle1,
                    //         ),
                    //       ),
                    //       FlatButton(
                    //         onPressed: () {},
                    //         child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.end,
                    //           children: [
                    //             Text(
                    //               '1 Week',
                    //               style: Theme.of(context).textTheme.subtitle1,
                    //             ),
                    //             Icon(Icons.keyboard_arrow_right_outlined),
                    //           ],
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    Container(
                      // Tag section
                      margin: EdgeInsets.only(
                        top: 35,
                      ),
                      child: DropdownButton(
                        value: _selectedTag,
                        icon: Icon(Icons.arrow_drop_down),
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 18,
                        ),
                        underline: Container(
                          height: 2,
                          color: Theme.of(context).primaryColor,
                        ),
                        onChanged: (String newTag) {
                          setState(() {
                            _selectedTag = newTag;
                          });
                        },
                        items: ['medicine', 'exercise', 'diet', 'other']
                            .map((value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: RaisedButton(
                        onPressed: _submitData,
                        child: Text(
                          'Add Task',
                        ),
                        color: Theme.of(context).primaryColor,
                        textColor: Theme.of(context).textTheme.button.color,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
