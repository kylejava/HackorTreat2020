import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:horrify/services/keys.dart';

class LoadToGenre extends StatefulWidget {
  @override
  _LoadToGenreState createState() => _LoadToGenreState();
}

class _LoadToGenreState extends State<LoadToGenre> {
  Map chosenGenre = {};


  @override
  Widget build(BuildContext context) {
    chosenGenre = ModalRoute.of(context).settings.arguments;
    loadUpMovies();
    return Scaffold(
      appBar: AppBar(),
        body: Text(chosenGenre['genreName']),
      );
  }
}
