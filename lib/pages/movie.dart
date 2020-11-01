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
    print(movieDetails['genre'][0]['name']);
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
            ),
            SizedBox(height: 50.0,),

            Container(
              color: Colors.orange[50],
              child: Column(

                children: [
                  SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Text(
                        'Name of Movie: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      Text(
                        movieDetails['name'],
                        style: TextStyle(fontSize: 18.0),
                      ),//DISPLAY
                    ],
                  ),//DISPLAY NAME
                  SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          movieDetails['information'],
                          style: TextStyle(
                            fontSize: 15.0
                          ),
                          maxLines: 10,
                        ),
                      ),
                    ],
                  ),//DISPLAY info
                  SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Text(
                        'Release Date: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        movieDetails['date'],

                      ),//DISPLAY Date
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Genres: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      for (var i = 0; i < movieDetails['genre'].length; i++) Text(movieDetails['genre'][i]['name'] + ', ')
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Runtime: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                     Text(movieDetails['runtime'].toString() + ' Minutes')
                    ],
                  ),//Display Genres
                ],
              ),
            ),
          ],

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.movie_creation_outlined ,color: Colors.black,),
        backgroundColor: Colors.yellow[100],
      ),
    );
  }
}
