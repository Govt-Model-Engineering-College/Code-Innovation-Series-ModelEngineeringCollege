import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:health_app/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String email =" ";
  String password =" ";
  String error = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff9ACDE0),
      body:Container(
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 40.0),
        color: Color(0xff9ACDE0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height:20.0),
              Text("Email",
              style: TextStyle(fontSize: 30.0,color: Colors.blueAccent[900])),
              TextFormField(
                style: TextStyle(fontSize: 25.0),
                validator: (val) => val.isEmpty ? 'Email is mandatory': null,
                onChanged: (val){
                  setState(() => email = val);
                  },
              ),
              SizedBox(height:20.0),
              Text("Password",
                  style: TextStyle(fontSize: 30.0,color: Colors.blueAccent[900])),
              TextFormField(
                obscureText: true,
                style: TextStyle(fontSize: 25.0),
                validator: (val) => val.length < 8 ? 'Password is Invalid': null,
                onChanged: (val){
                  setState(() => password = val);
                  },
              ),
              SizedBox(height:20.0),
              SizedBox(height: 20.0),
              RaisedButton(
                color: Colors.red[500],
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white,fontSize: 20.0),
                ),
                onPressed: ()async {
                  if(_formKey.currentState.validate()) {
                    dynamic result = await _auth.registerWithEmailandPassword(
                        email, password);
                    if(result == null){
                      setState(() {
                        error = 'please supply a valid email';
                      });
                  }
                    }
                },
              ),
              SizedBox(height: 12.0,),
              Text(
                error,
                style: TextStyle(color: Colors.red,fontSize: 20.0),
              )
            ],
          ),
        ),
      ),

      );





  }

}
