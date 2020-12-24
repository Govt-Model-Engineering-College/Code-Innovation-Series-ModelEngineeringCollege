import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/history.dart';

class HistoryPage extends StatelessWidget {
  final List<History> _medicalHistory = [
    History(
      title: 'High fever and cough',
      doctor: 'Dr Bhasi',
      date: DateTime.now(),
    ),
    History(
      title: 'Fractured Leg',
      doctor: 'Dr Sunny',
      date: DateTime.now(),
    ),
    History(
      title: 'Severe Throat pain',
      doctor: 'Dr Ranjini',
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFF8A5C),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              // History heading section
              height: 140,
              width: MediaQuery.of(context).size.width,
              color: Color(0xffFF8A5C),
              padding: EdgeInsets.only(left: 40, top: 35),
              child: Text(
                'History',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.8,
              margin: EdgeInsets.all(16),
              child: ListView.builder(
                itemCount: _medicalHistory.length,
                itemBuilder: (ctx, index) {
                  return Card(
                    margin: EdgeInsets.only(top: 16),
                    elevation: 5,
                    child: GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _medicalHistory[index].title,
                              style: TextStyle(
                                color: Color(0xffFF8A5C),
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'Consulted: ${_medicalHistory[index].doctor}',
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'On: ${DateFormat.yMMMd().format(_medicalHistory[index].date)}',
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffFF8A5C),
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
