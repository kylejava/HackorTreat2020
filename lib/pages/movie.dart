import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class Movie extends StatefulWidget {
  @override
  _MovieState createState() => _MovieState();
}

class _MovieState extends State<Movie> {
  Map movieDetails = {};
  void _lauchURL() async{
    var _url = 'https://www.google.com/search?q='+ movieDetails['name'];
    if ( await canLaunch(_url) != null) {
      await launch(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }
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
            SizedBox(height: 30.0,),

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
                         fontSize:20.0,

                        ),
                      ),
                      Text(
                        movieDetails['name'],
                        style: TextStyle(fontSize:20.0),
                      ),//DISPLAY
                    ],
                  ),//DISPLAY NAME
                  SizedBox(height: 12.0,),
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
                  SizedBox(height: 12.0,),
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
                          style: TextStyle(fontSize: 16.0)
                      ),//DISPLAY Date
                    ],
                  ),
                  SizedBox(height: 12.0,),
                  Row(
                    children: [
                      Text(
                        'Genres: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      for (var i = 0; i < movieDetails['genre'].length; i++) Text(movieDetails['genre'][i]['name'] + ', ' , style: TextStyle(fontSize: 16.0))
                    ],
                  ),
                  SizedBox(height: 12.0,),
                  Row(
                    children: [
                      Text(
                        'Runtime: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                     Text(movieDetails['runtime'].toString() + ' Minutes' , style: TextStyle(fontSize: 16.0),)
                    ],
                  ),//Display Genres
                ],
              ),
            ),
          ],

        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _lauchURL();
        },
        child: Icon(Icons.movie_creation_outlined ,color: Colors.black,),
        backgroundColor: Colors.yellow[100],
      ),
    );
  }
}
