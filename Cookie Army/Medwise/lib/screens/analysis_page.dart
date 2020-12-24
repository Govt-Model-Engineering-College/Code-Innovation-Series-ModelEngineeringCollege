import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../widgets/chart.dart';

class AnalysisPage extends StatelessWidget {
  final _dateTo = DateTime.now();
  final _dateFrom = DateTime.now().subtract(Duration(days: 6));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffB83F87),
        elevation: 0,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // Analysis heading section
                height: 140,
                width: MediaQuery.of(context).size.width,
                color: Color(0xffB83F87),
                padding: EdgeInsets.only(left: 40, top: 35),
                child: Text(
                  'Analysis',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recent Tasks',
                      style: TextStyle(
                          // color: Color(0xffB83F87),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Chart(), // Recent tasks chart
                    Text(
                      '% tasks completed per day',
                    ),
                    Padding(
                      // Date selection
                      padding: EdgeInsets.symmetric(vertical: 28),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'From',
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                              OutlineButton(
                                onPressed: () {},
                                child:
                                    Text(DateFormat('d/M/y').format(_dateFrom)),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'To',
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                              OutlineButton(
                                onPressed: () {},
                                child:
                                    Text(DateFormat('d/M/y').format(_dateTo)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Task Completed',
                      style: TextStyle(
                          // color: Color(0xffB83F87),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('All'),
                              Text('75/100'),
                            ],
                          ),
                          SizedBox(height: 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Medicine'),
                              Text('59/75'),
                            ],
                          ),
                          SizedBox(height: 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Exercise'),
                              Text('10/15'),
                            ],
                          ),
                          SizedBox(height: 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Diet'),
                              Text('6/10'),
                            ],
                          ),
                          SizedBox(height: 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Other'),
                              Text('Nil'),
                            ],
                          ),
                        ],
                      ),
                    )
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
