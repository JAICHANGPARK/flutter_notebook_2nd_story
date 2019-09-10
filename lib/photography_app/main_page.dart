import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/generated/i18n.dart';

class PhotographyApp extends StatelessWidget {
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
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            bottom: 0,
            child: Image.network(
              "https://cdn.pixabay.com/photo/2017/05/02/15/30/streets-2278471_960_720.jpg",
              fit: BoxFit.fitHeight,
            ),
          ),
          Positioned(
            left: 32,
            top: 48,
            child: Container(
              height: 38,
              width: 38,
              decoration: BoxDecoration(
                color: Colors.yellow,
              ),
              child: Center(
                child: Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              height: 400,
              width: MediaQuery.of(context).size.width - 48,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 24,
                    right: 0,
                    bottom: 0,
                    top: 16,
                    child: Container(
                      padding: EdgeInsets.all(24),
                      decoration: BoxDecoration(color: Colors.red[400]),
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Summarecon Lit",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                height: 38,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.1),
                                ),
                                child: Center(
                                  child: Text(
                                    "City",
                                    style: TextStyle(color: Colors.yellow[300]),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                height: 38,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.1),
                                ),
                                child: Center(
                                  child: Text(
                                    "Panorama",
                                    style: TextStyle(color: Colors.yellow[300]),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "41+",
                                    style: TextStyle(
                                      fontSize: 28,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Spot Building",
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.8)),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "10+",
                                    style: TextStyle(
                                      fontSize: 28,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Spot Popular",
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.8)),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "5+",
                                    style: TextStyle(
                                      fontSize: 28,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Culinary Spot",
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.8)),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 48,),
                          Text(
                              "Lorem ipsum dolor sit amet, consectetur adipisicing elit, "
                                  "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                  " e velit esse cillum dolore eu fugiat nulla pariatur. Excepteur",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5)
                          ),),
                          SizedBox(height: 16,),
                          Text(
                            "Detail",
                            style: TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    right: 16,
                    child: Container(
                      height: 50,
                      width: 58,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.grey, width: 0.5)),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 24,
                    child: Container(
                      height: 58,
                      width: 58,
                      decoration: BoxDecoration(color: Colors.yellow),
                      child: Center(
                        child: Icon(
                          Icons.location_searching,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 24,
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 160,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 5,
                            child: Container(
                              color: Colors.white.withOpacity(0.2),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              color: Colors.white.withOpacity(0.1),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 84,
                    left: 0,
                    child: Container(
                      height: 1,
                      width: 58,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
