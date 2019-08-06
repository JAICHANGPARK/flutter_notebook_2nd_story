import 'package:flutter/material.dart';


class FurnitureApp extends StatelessWidget {
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
    var deviceMedia = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
              right: 0,
            top: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffffcc1e)
              ),
            ),

          )
        ],
      ),
    );
  }
}
























