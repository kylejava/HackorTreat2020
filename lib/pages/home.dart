import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Timer _timer;
  void goToNextScreen(){
    if(mounted) {

      int _start =5;
      const oneSec = const Duration(seconds: 1);
      _timer = new Timer.periodic(
        oneSec,
            (Timer timer) =>
            setState(
                  () {
                if (_start < 1) {
                  timer.cancel();
                  Navigator.pushReplacementNamed(context, '/genrelist');
                } else {
                  _start = _start - 1;
                }
              },
            ),
      );
    }
  }
  @override
  void dispose() {
  _timer.cancel();
    super.dispose();
  }
  Widget build(BuildContext context) {
    goToNextScreen();
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/logo.png')),
              SizedBox(
                height: 100.0,
              ),
              SpinKitFoldingCube(
                color: Colors.black,
                size: 50.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
