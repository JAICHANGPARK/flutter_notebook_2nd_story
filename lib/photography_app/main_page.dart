import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                      decoration: BoxDecoration(color: Colors.red[400]),
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
