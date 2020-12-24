import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Profile',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {},
          )
        ],
      ),
      backgroundColor: Color(0xfff6f6f9),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Icon(
                Icons.account_circle,
                size: 150,
                color: Color.fromRGBO(67, 67, 67, 1),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              color: Colors.white,
              child: ListTile(
                leading: Text(
                  'Name',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                title: Text(
                  'Jacob',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.phone, color: Colors.black),
                title: Text(
                  '+91 9846641230',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(Icons.email, color: Colors.black87),
                title: Text(
                  'jacob@gmail.com',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: RaisedButton(
                color: Color.fromRGBO(67, 67, 67, 1),
                child: Text(
                  'Log out',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
            ),
            Expanded(
                child: Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(bottom: 24),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: FlatButton(
                        color: Color.fromRGBO(67, 67, 67, 1),
                        height: 50,
                        child: Text(
                          'Support',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      child: FlatButton(
                        color: Color.fromRGBO(67, 67, 67, 1),
                        height: 50,
                        child: Text(
                          'Feedback',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
