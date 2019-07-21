import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MerukariClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme.of(context).platform == TargetPlatform.android
        ? MaterialApp(
            home: HomePage(),
          )
        : CupertinoApp(
            home: CupertinoHomePage(),
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
          SizedBox(
            height: 24,
          ),
          Container(
            height: 120,
            width: MediaQuery.of(context).size.width,
            child: Placeholder(),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 148,
            child: Placeholder(),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: []),
    );
  }
}

class CupertinoHomePage extends StatefulWidget {
  @override
  _CupertinoHomePageState createState() => _CupertinoHomePageState();
}

class _CupertinoHomePageState extends State<CupertinoHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}























