import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:horrify/services/ListOfGenres.dart';

class GenreList extends StatefulWidget {
  @override
  _GenreListState createState() => _GenreListState();
}

class _GenreListState extends State<GenreList> {
  List _colors = [
    Colors.yellow[100],
    Colors.orangeAccent[50],
    Colors.orange[100],
    Colors.red[100],
    Colors.deepOrange,
    Colors.yellowAccent
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HORRIFY' , style: TextStyle(fontSize: 30.0),),
          backgroundColor: Colors.deepOrange,
        ),

        body: GridView.builder(
          itemCount: genres.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () =>
              {
                Navigator.pushNamed(context, "/loadtogenre" , arguments: {
                  'genreName': genres[index]['name'],
                  'genreId': genres[index]['id']
                })

              },
              child: Card(
                color: _colors[index % _colors.length],
                child: Center(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      genres[index]['name'],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("work on this later");
        },
        child: Icon(Icons.shuffle),
        backgroundColor: Colors.deepOrange,
      ),
      );
  }
}
