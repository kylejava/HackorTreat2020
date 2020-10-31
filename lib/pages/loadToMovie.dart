import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:horrify/services/keys.dart';

class LoadToMovie extends StatefulWidget {
  @override
  _LoadToMovieState createState() => _LoadToMovieState();
}

class _LoadToMovieState extends State<LoadToMovie> {
  Map chosenMovie = {};

  void loadMovie(){

  }


  @override
  Widget build(BuildContext context) {
    chosenMovie = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Loading',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40.0,

            ),
          ),
          SpinKitRing(
            color: Colors.black,
            size: 50.0,
          )
        ],
      ),
    );
  }
}
