import 'package:flutter/material.dart';

class FoodApp extends StatelessWidget {
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
  Color searchBarColor = Color(0xfff5f4f7);
  Color iconContainerColor = Color(0xffffeee8);
  Color appIconColor = Color(0xff020e3a);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                height: 48,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.menu, color: appIconColor,
                    size: 32,),
                    Icon(Icons.move_to_inbox, color: appIconColor,
                    size: 32,)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}





























