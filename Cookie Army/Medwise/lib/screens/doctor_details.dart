import 'package:flutter/material.dart';

import '../models/doctor.dart';

class DoctorDetails extends StatelessWidget {
  final Doctor _selectedDoctorDetails;

  DoctorDetails(this._selectedDoctorDetails);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connect'),
        backgroundColor: Theme.of(context).accentColor,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 20,
                bottom: 20,
              ),
              child: Icon(
                Icons.account_circle,
                size: 100,
                color: Color.fromRGBO(67, 67, 67, 1),
              ),
            ),
            Text(
              _selectedDoctorDetails.name,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              //Specialization and qualification
              width: MediaQuery.of(context).size.width / 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${_selectedDoctorDetails.specialization} , ',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  Text(
                    _selectedDoctorDetails.qualification,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
            ),
            Container(
              // Call, message and video
              margin: EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width * 3 / 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green[600],
                    radius: 20,
                    child: IconButton(
                      icon: Icon(Icons.call),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 20,
                    child: IconButton(
                      icon: Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.orange,
                    radius: 20,
                    child: IconButton(
                      icon: Icon(
                        Icons.video_call,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height / 10,
              ),
              width: MediaQuery.of(context).size.width * 3 / 4,
              child: Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 32,
                    horizontal: 16,
                  ),
                  child: Text(
                    _selectedDoctorDetails.description,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ),
            ),
            SizedBox(
              //Pay
              height: 50,
              width: 100,
              child: RaisedButton(
                onPressed: () {},
                child: Text(
                  'Pay',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
