import 'package:flutter/material.dart';
import 'package:horrify/services/ListOfGenres.dart';
import 'dart:math';
import 'package:horrify/services/keys.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
Future<int> getRandomMovie() async {
  var rng = new Random();
  List movies = [];
  var _id = genres[rng.nextInt(genres.length)]['id'];
  var url = 'https://api.themoviedb.org/3/keyword/' + _id.toString() +
      '/movies?api_key=' + keys + '&language=en-US&include_adult=false';
  var response = await http.get(url);
  Map data = jsonDecode(response.body);
  for (int i = 0; i < data['results'].length; i++) {
    var name = data['results'][i]['title'];
    Map entry = {
      'name': name,
      'id': data['results'][i]['id'],

    };
    movies.add(entry);
  }
  var _movieId = movies[rng.nextInt(movies.length)]['id'];
  return _movieId;

}