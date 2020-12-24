import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  // List<Map<String,Object>> get recentTasks {
  //   return List.generate(7, (index) {
  //     final weekDay = DateTime.now().subtract(
  //       Duration(days: index),
  //     );

  //     return {
  //       'date': DateFormat.E().format(weekDay).substring(0, 1),
  //     };
  //   }).reversed.toList();
  // }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ChartBar(
              title: 'S',
              height: 0.8,
            ),
            ChartBar(
              title: 'S',
              height: 0.9,
            ),
            ChartBar(
              title: 'M',
              height: 0.8,
            ),
            ChartBar(
              title: 'T',
              height: 1,
            ),
            ChartBar(
              title: 'W',
              height: 0.85,
            ),
            ChartBar(
              title: 'T',
              height: 1,
            ),
            ChartBar(
              title: 'F',
              height: 0.2,
            ),
          ],
        ),
      ),
    );
  }
}

class ChartBar extends StatelessWidget {
  ChartBar({this.title, this.height});
  final String title;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        SizedBox(height: 4),
        Container(
          height: 60,
          width: 10,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  color: Color.fromRGBO(220, 220, 220, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              FractionallySizedBox(
                heightFactor: height,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffB83F87),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
