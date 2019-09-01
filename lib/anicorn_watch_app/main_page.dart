import 'package:flutter/material.dart';

class AnicornWatchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DetailPage(),
    );
  }
}

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 16,
            left: 0,
            right: 16,
            child: Container(
              height: 280,
              decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                  colors: [
                    Colors.redAccent,
                    Colors.redAccent.withOpacity(0.8),
                    Colors.orange[200],
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(34)
                )
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    right: 16,
                    top: 16,
                    bottom: 24,
                    child: Container(),

                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}























