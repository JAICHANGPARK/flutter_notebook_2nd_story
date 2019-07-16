import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
class LoveReadingApp extends StatelessWidget {
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xff393939)),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: <Widget>[
          Center(
            child: Badge(
              badgeContent: Text(''),
              child: Icon(Icons.mail_outline,
              color:  Color(0xff393939),),
            ),
          ),
          IconButton(
            icon: Icon(Icons.settings,
            color:  Color(0xff393939),),
            onPressed: (){
            },
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Container(
            height: ,
          )
        ],
      ),
    );
  }
}

















