import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Movie extends StatefulWidget {
  @override
  _MovieState createState() => _MovieState();
}

class _MovieState extends State<Movie> {
  Map movieDetails = {};
  @override
  Widget build(BuildContext context) {
    movieDetails =  ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(movieDetails['name']),
      ),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(

          children: [
            Align(
              alignment: Alignment.topCenter,
              child:  Image.network(movieDetails['photo']),
            )
          ],

        ),
      ),
    );
  }
}
