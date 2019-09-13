import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String imgIndex;
  DetailPage({this.imgIndex});
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
            top: 0,
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.height / 2,
            child: Placeholder(),
          ),
          Positioned(

          )
        ],
      ),
    );
  }
}

















