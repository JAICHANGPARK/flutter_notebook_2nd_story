import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/note_utils/note_image.dart';

class PixelsUIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 38),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 48,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.menu),
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: Colors.teal[400],
                      ),
                      child: Center(
                        child: Icon(
                          Icons.photo_filter,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Icon(Icons.search)
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 280,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 5,
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 4),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2019/09/12/18/34/krakow-4472321__340.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 4),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2019/07/16/20/48/dolomites-4342572__340.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 4),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2019/08/06/02/16/landscape-4387209__340.jpg"),
                                fit: BoxFit.cover)),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 4),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2019/09/14/23/14/dogs-4477058__340.jpg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.3), BlendMode.darken)),
                ),
                height: 140,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "leaderboard last 30 days".toUpperCase(),
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    Text(
                      "Top photographers".toUpperCase(),
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 64,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.only(left: 16, right: 16),
                      padding: EdgeInsets.only(left: 16),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 21,
                           child: Image.network(dreamwalkerImg),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Card(
                            elevation: 8,
                            margin: EdgeInsets.symmetric(vertical: 12),
                            child: Container(
                              width: 64,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                image: DecorationImage(
                                  image: NetworkImage("https://cdn.pixabay.com/photo/2019/09/19/07/26/extreme-4488462__340.jpg"),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Card(
                            elevation: 8,
                            margin: EdgeInsets.symmetric(vertical: 12),
                            child: Container(
                              width: 64,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Card(
                            elevation: 8,
                            margin: EdgeInsets.symmetric(vertical: 12),
                            child: Container(
                              width: 64,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Card(
                            elevation: 8,
                            margin: EdgeInsets.symmetric(vertical: 12),
                            child: Container(
                              width: 64,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 280,
                child: Placeholder(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
