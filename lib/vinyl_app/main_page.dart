import 'package:flutter/material.dart';


class VinylApp extends StatelessWidget {
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
      backgroundColor: Colors.deepPurple,
      body: Column(
        children: <Widget>[
          SafeArea(
            top: true,
            left: true,
            right: true,
            child: Container(
              height: 48,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(32)
              ),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search)
                ),
              )
            ),
          )
        ],
      ),
    );
  }
}


































