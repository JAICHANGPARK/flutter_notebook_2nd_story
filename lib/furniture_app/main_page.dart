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
  List<Widget> _buildBackgroundWidget(BuildContext context) {
    return [
      Positioned(
        left: 0,
        right: 0,
        top: 0,
        child: Container(
          height: MediaQuery.of(context).size.height / 2,
          decoration: BoxDecoration(color: Color(0xffffcc1e)),
        ),
      ),
      Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          height: MediaQuery.of(context).size.height / 2,
          decoration: BoxDecoration(
            color: Color(0xfffcf8e7),
          ),
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ..._buildBackgroundWidget(context).map((m)=>m),

        ],
      ),
    );
  }
}









































