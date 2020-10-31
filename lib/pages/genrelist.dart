import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:horrify/services/ListOfGenres.dart';

class GenreList extends StatefulWidget {
  @override
  _GenreListState createState() => _GenreListState();
}

class _GenreListState extends State<GenreList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Horrify'),
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
                child: Center(child: Text(genres[index]['name']),),
              ),
            );
          },
        ),
      );

  }
}
