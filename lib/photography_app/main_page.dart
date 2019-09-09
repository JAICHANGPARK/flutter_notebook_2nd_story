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
              child: Image.network("https://cdn.pixabay.com/photo/2017/05/02/15/30/streets-2278471_960_720.jpg",
              fit: BoxFit.fitHeight,),
            )
        ],
      ),
    );
  }
}



























