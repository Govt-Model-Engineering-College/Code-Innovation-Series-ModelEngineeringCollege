import 'package:flutter/material.dart';

class Results extends StatefulWidget {
  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {

    Map<String, dynamic> obj = ModalRoute.of(context).settings.arguments;

    Widget assignTitle(index) {
      String title;
      try {
        if (obj['clinics'].items[index] != null)
          title = ((obj['clinics'].items[index].title) != null) ? obj['clinics']
              .items[index].title : ' ';
        else
          title = ' ';
      }
      catch(e){
        title=' ';
      }
      return Text(
        title,
        style: TextStyle(
          fontSize: 17.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      );
    }

    Widget assignAddress(index) {
      String address;
      try {
        if ((obj['clinics'].items[index] != null) &&
            (obj['clinics'].items[index].address != null))
          address =
          ((obj['clinics'].items[index].address.label) != null) ? obj['clinics']
              .items[index].address.label : ' ';
        else
          address = ' ';
      }
      catch(e){
        address=' ';
      }
      return Text(
        address,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.white,
        ),
      );
    }

    Widget assignContact(index) {

      String contactNo;
      try {
        if ((obj['clinics'].items[index] != null) &&
            (obj['clinics'].items[index].contacts) != null) {
          if ((obj['clinics'].items[index].contacts[0].phone) != null) {
            contactNo =
            ((obj['clinics'].items[index].contacts[0].phone[0].value) != null)
                ? obj['clinics'].items[index].contacts[0].phone[0].value
                : '                              ';
          }
        }
        else
          contactNo = '                              ';
      }
      catch(e){
        contactNo='                              ';
      }
      return Text(
          contactNo,
          style: TextStyle(
          fontSize: 15.0,
          color: Colors.white,
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(obj['specs']),
        centerTitle: true,
        backgroundColor: Color(0xff0e2433),
      ),
      body: ListView.builder(
        itemCount: (obj['clinics'].items).length,
        itemBuilder: (context,index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(10, 20 , 10, 10),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff1c4966),
                border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 5.0),
                  assignTitle(index),
                  SizedBox(height:10.0),
                  assignAddress(index),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      assignContact(index),
                      SizedBox(width: 60.0),
                      FlatButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context,'/fixAppointment');
                        },
                        label: Text(
                          'Fix Appointment',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white,
                          ),
                        ),
                        icon: Icon(
                            Icons.call,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
