import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181E27),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Placeholder(),
          ),
         VerticalDivider(
           color: Colors.white,
         ),
          Expanded(
            flex: 8,
            child: Placeholder(),
          ),

        ],
      ),
    );
  }
}
