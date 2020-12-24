import 'package:flutter/material.dart';

import '../models/doctor.dart';
import '../screens/doctor_details.dart';

class DoctorsList extends StatelessWidget {
  final List<Doctor> _allDoctorsList;

  DoctorsList(this._allDoctorsList); // from connect_page.dart

  // List<Doctor> get _physicianDoctors {
  //   return _allDoctorsList.where((doctor) {
  //     if (doctor.specialization.compareTo('physician') == 0) return true;
  //   }).toList();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.8,
      margin: EdgeInsets.only(top: 16),
      child: ListView.builder(
          itemCount: _allDoctorsList.length,
          itemBuilder: (ctx, index) {
            return Card(
              margin: EdgeInsets.only(top: 16),
              elevation: 5,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DoctorDetails(_allDoctorsList[index]),
                    ),
                  );
                },
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    child: Icon(
                      Icons.account_circle,
                      color: Colors.white,
                    ),
                    backgroundColor: Theme.of(context).accentColor,
                  ),
                  title: Text(
                    _allDoctorsList[index].name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(_allDoctorsList[index].specialization),
                  trailing: Container(
                    width: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(_allDoctorsList[index].rating.toString()),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[600],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
