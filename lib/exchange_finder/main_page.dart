import 'package:flutter/material.dart';

class ExchangeFinder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EFMainPage(),
    );
  }
}

class EFMainPage extends StatefulWidget {
  @override
  _EFMainPageState createState() => _EFMainPageState();
}

class _EFMainPageState extends State<EFMainPage> {
  static const double appLeftPadding = 48.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            left: appLeftPadding,
            top: 0,
            child: Container(
              height: 130,
              width: MediaQuery.of(context).size.width / 2,
              child: Placeholder(),
            ),
          ),
          Positioned(
            right: 24,
            top: 16,
            child: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
