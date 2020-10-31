import 'package:flutter/material.dart';
import 'package:horrify/pages/home.dart';
import 'package:horrify/pages/genrelist.dart';
import 'package:horrify/pages/loadToMovie.dart';
import 'file:///C:/Users/Kyle/Desktop/code/DSCFlutterWorkshop/horrify/lib/pages/loadToGenre.dart';
import 'package:horrify/pages/movielist.dart';
import 'package:horrify/pages/loadToMovie.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/genrelist',
      routes: {
        '/home': (context) => HomeScreen(),
        '/genrelist': (context) => GenreList(),
        '/loadtogenre': (context) => LoadToGenre(),
        '/movielist': (context) => MovieList(),
        '/loadtomovie': (context) => LoadToMovie(),
      },
    );
  }
}

