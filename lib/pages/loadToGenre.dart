import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:horrify/services/keys.dart';

class LoadToGenre extends StatefulWidget {
  @override
  _LoadToGenreState createState() => _LoadToGenreState();
}

class _LoadToGenreState extends State<LoadToGenre> {
  Map chosenGenre = {};
  List movies = [];
  void loadUpMovies() async {
    var url ='https://api.themoviedb.org/3/keyword/'+chosenGenre['genreId'].toString()+'/movies?api_key='+ keys + '&language=en-US&include_adult=false';
    var response = await http.get(url);
    Map data = jsonDecode(response.body);
    for(int i = 0; i < data['results'].length; i++){
      var name = data['results'][i]['title'];
      Map entry = {
        'name': name,
        'id': data['results'][i]['id'],

      };
      movies.add(entry);
    }
    Navigator.pushReplacementNamed(context, '/movielist' , arguments: {
      'genre': chosenGenre['genreName'],
      'movies':movies,

    });
  }

  @override
  Widget build(BuildContext context) {
    chosenGenre = ModalRoute.of(context).settings.arguments;
    loadUpMovies();
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
