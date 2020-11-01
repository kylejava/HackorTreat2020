import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:horrify/services/ListOfGenres.dart';
import 'package:horrify/services/randomize.dart';
import 'package:horrify/services/keys.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
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
          title: Text('FRIGHTNIGHT' , style: TextStyle(fontSize: 30.0),),
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
        onPressed: () async {
          int movieid = await getRandomMovie();

          var movieurl = 'https://api.themoviedb.org/3/movie/' + movieid.toString() + '?api_key=' + keys+'&language=en-US';
          var movieresponse = await http.get(movieurl);

           Map moviedata = jsonDecode(movieresponse.body);

          var date = (moviedata['release_date']);
          var linkToPhoto = 'https://image.tmdb.org/t/p/w220_and_h330_face' + moviedata['poster_path'];
          Navigator.pushNamed(context, '/movie' , arguments: {
            'name': moviedata['original_title'],
            'information': moviedata['overview'],
            'genre': moviedata['genres'],
            'photo': linkToPhoto,
            'date': date,
            'runtime': moviedata['runtime'],

          });



        },
        child: Icon(Icons.shuffle),
        backgroundColor: Colors.deepOrange,
      ),
      );
  }
}
