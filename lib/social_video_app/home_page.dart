import 'package:flutter/material.dart';

class SocialVideoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(

            ),
            height: 180,
           child: Placeholder(),
          ),
          Container(
            height: MediaQuery.of(context).size.height-180,
            child: Placeholder(),

          )
        ],
      ),
    );
  }
}





































