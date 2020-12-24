import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void goBack() {
    //Future.delayed(Duration(seconds:3), () {
      Navigator.pop(context);
    //});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    goBack();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SpinKitThreeBounce(
            color: Colors.red,
            size: 50.0,
          )
      ),
    );
  }
}
