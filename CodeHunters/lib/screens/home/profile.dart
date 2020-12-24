import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}
class _ProfilePageState extends State<ProfilePage> {

  String name = " ";
  String location = " ";
  String bloodgroup = " ";
  String phoneno = " ";
  String age = " ";
  final _formKey1 = GlobalKey<FormState>();
  final myController = TextEditingController();

  @override
  void dispose() {
     //Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding : false,
      backgroundColor: Color(0xff3792cb),
      body:Form(
        key: _formKey1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 60.0,),
            TextFormField(
                style: TextStyle(fontSize: 25.0),
                controller: myController,
                decoration: const InputDecoration(
                hintText: 'Enter your name',
                labelText: 'Name',
              ),
                validator: (val) => val.isEmpty ? 'Name is mandatory': null,
                onChanged: (val){
                setState(() => name = val);}
                ),
            TextFormField(
                style: TextStyle(fontSize: 25.0),
              decoration: const InputDecoration(
                hintText: 'Enter your location',
                labelText: 'Location',
                ),

                validator: (val) => val.isEmpty ? 'Location is mandatory': null,
                onChanged: (val){
                setState(() => location = val);}
                ),

            TextFormField(
                style: TextStyle(fontSize: 25.0),
              decoration: const InputDecoration(
                hintText: 'Enter your Bloodgroup',
                labelText: 'BloodGroup',
                ),
                validator: (val) => val.isEmpty ? 'BloodGroup is mandatory': null,
                onChanged: (val){
                setState(() => bloodgroup = val);}
                ),
            TextFormField(
                style: TextStyle(fontSize: 25.0),
              decoration: const InputDecoration(
                hintText: 'Enter your Age',
                labelText: 'Age',
              ),
              validator: (val) => val.isEmpty ? 'Age is mandatory': null,
              onChanged: (val){
              setState(() => age = val);}
              ),
            TextFormField(
                style: TextStyle(fontSize: 25.0),
              decoration: const InputDecoration(
                hintText: 'Enter your PhoneNo',
                labelText: 'PhoneNo',
              ),
              validator: (val) => val.isEmpty ? 'Phoneno is mandatory': null,
              onChanged: (val){
              setState(() => phoneno = val);}
              ),
            RaisedButton(
              color: Colors.red[900],
              child: Text(
                'Submit',
                style: TextStyle(color: Colors.white,fontSize: 25.0),
              ),
              onPressed: () {
                if (_formKey1.currentState.validate()) {
                  return showDialog(
                      context: context,
                      builder: (ctx) =>AlertDialog(
                           title: Text("Profile Details"),
                            content: Text("Data Saved"),
                            actions: [new FlatButton(child: new Text('OK'),
                          onPressed: () {
                          Navigator.of(context).pop();}

                          ),],

                            )
                  );
                  //Navigator.pushNamed(context,'/home_screen',arguments:{"name":myController.text});
                }
              }

            ),

          ],
        ),
      ),
    );

    }
  }

