import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MovieList extends StatefulWidget {
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  Map listOfMovies ={};
  List _colors = [
    Colors.red[100],
    Colors.yellowAccent,
    Colors.orangeAccent[50],
    Colors.orange[100],
    Colors.yellow[100],
    Colors.deepOrange,

  ];

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
              color: _colors[index % _colors.length],
              child: Center(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    listOfMovies['movies'][index]['name'],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
