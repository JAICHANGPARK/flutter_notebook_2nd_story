import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/note_utils/note_image.dart';

class StarAnimationApp extends StatelessWidget {
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SafeArea(
            top: true,
            left: true,
            right: true,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Text("930K"),
                        ],
                      ),
                      Text("subscribers", style: TextStyle(
                        fontSize: 12
                      ),)
                    ],
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      dreamwalkerImg
                    ),
                  )
                ],
              ),
            ),
          ),

          Container(
            height: 280,
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 16,
                  right: 16,
                  top: 0,
                  bottom: 24,
                  child: Container(
                    padding: EdgeInsets.all(36),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Jupiter_New_Horizons.jpg/300px-Jupiter_New_Horizons.jpg",)
                      )
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 36,
                  right: 36,
                  child: Container(
                    height: 52,
                    decoration: BoxDecoration(
                      color: Colors.indigoAccent,
                      borderRadius: BorderRadius.circular(16)
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}



















