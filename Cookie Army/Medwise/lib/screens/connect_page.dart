import 'package:flutter/material.dart';

import '../widgets/doctors_list.dart';
import '../models/doctor.dart';

class ConnectPage extends StatefulWidget {
  @override
  _ConnectPageState createState() => _ConnectPageState();
}

class _ConnectPageState extends State<ConnectPage> {
  var doctorCategory = 'All';
  final List<Doctor> _allDoctorsList = [
    Doctor(
      name: 'Dr Jose',
      specialization: 'Physician',
      qualification: 'MBBS',
      rating: 4.2,
      description:
          'X years of experience. Currently working at blah blah blah. Previously worked at blah blah, xyzxyz and abcbca.',
    ),
    Doctor(
      name: 'Dr Bhasi',
      specialization: 'Physician',
      qualification: 'MBBS',
      rating: 4.8,
      description:
          'Z years of experience. Currently working at blah blah blah. Previously worked at blah blah, xyzxyz and abcbca.',
    ),
    Doctor(
      name: 'Dr Grace',
      specialization: 'Pediatrician',
      qualification: 'MBBS',
      rating: 4.4,
      description:
          'X years of experience. Currently working at blah blah blah. Previously worked at blah blah, xyzxyz and abcbca.',
    ),
    Doctor(
      name: 'Dr Mushtaq',
      specialization: 'Pediatrician',
      qualification: 'MBBS',
      rating: 4.4,
      description:
          'X years of experience. Currently working at blah blah blah. Previously worked at blah blah, xyzxyz and abcbca.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).accentColor,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              // Connect Heading Section
              height: 140,
              width: MediaQuery.of(context).size.width,
              color: Theme.of(context).accentColor,
              padding: EdgeInsets.only(left: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Connect',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Text(
                      'with doctors nearby',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // Categories section
                    height: 50,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text('Categories',
                              style: Theme.of(context).textTheme.subtitle1),
                        ),
                        DropdownButton<String>(
                          value: doctorCategory,
                          icon: Icon(Icons.arrow_downward),
                          iconSize: 24,
                          elevation: 16,
                          style: TextStyle(color: Colors.black),
                          underline: Container(
                            height: 2,
                            color: Theme.of(context).accentColor,
                          ),
                          onChanged: (String newValue) {
                            setState(() {
                              doctorCategory = newValue;
                            });
                          },
                          items: <String>[
                            'All',
                            'Physician',
                            'Pediatrician',
                            'Other'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                  DoctorsList(_allDoctorsList),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
