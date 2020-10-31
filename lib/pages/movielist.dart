import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:horrify/services/keys.dart';

class MovieList extends StatefulWidget {
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  Map listOfMovies ={};

  @override
  Widget build(BuildContext context) {

    listOfMovies = ModalRoute.of(context).settings.arguments;
    print(listOfMovies['genre']);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(listOfMovies['genre']),
      ),
      body: GridView.builder(
        itemCount: listOfMovies['movies'].length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () =>{
              print('txt')
            },
            child: Card(
              child: Center(child: Text(listOfMovies['movies'][index]['name']),),
            ),
          );
        },
      ),
    );
  }
}
