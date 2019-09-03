import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/note_utils/note_image.dart';
import 'package:snappable/snappable.dart';

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
  final key = GlobalKey<SnappableState>();

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
                  InkWell(
                    onTap: () {
                      key.currentState.reset();
                    },
                    child: Container(
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
                      Text(
                        "subscribers",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(dreamwalkerImg),
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
                  child: Snappable(
                    key: key,
                    child: Container(
                      padding: EdgeInsets.all(36),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: NetworkImage(
                                "http://www.nasa.gov/images/content/617883main_VIIRS_4Jan2012.small.jpg",
                              ))),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 36,
                  right: 36,
                  child: Container(
                    padding: EdgeInsets.only(right: 16, left: 7),
                    height: 52,
                    decoration: BoxDecoration(
                        color: Colors.indigoAccent,
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.visibility,
                          color: Colors.white,
                        ),
                        Text(
                          "999",
                          style: TextStyle(color: Colors.white),
                        ),
                        Spacer(),
                        Icon(
                          Icons.whatshot,
                          color: Colors.white,
                        ),
                        Text(
                          "150",
                          style: TextStyle(color: Colors.white),
                        ),
                        Spacer(),
                        Icon(
                          Icons.message,
                          color: Colors.white,
                        ),
                        Text(
                          "25",
                          style: TextStyle(color: Colors.white),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            setState(() {
                              key.currentState.snap();
                            });
                          },
                          child: Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Text(
                                "Full Stats",
                                style: TextStyle(color: Colors.indigoAccent),
                              ),
                            ),
                          ),
                        )
                      ],
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
