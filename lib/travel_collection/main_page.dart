import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TravelCollection extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 6,
              padding: EdgeInsets.only(left: 24, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 8,
                    child: Container(
                      margin: EdgeInsets.only(top: 48, bottom: 36, right: 16),
                      padding: EdgeInsets.only(left: 16),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(4)),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search for place",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Badge(
                      badgeContent: Text("1"),
                      child: Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 8,
              padding: EdgeInsets.only(left: 24, bottom: 16),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: SelectableText(
                    "Ondue",
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              child: Placeholder(),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 8,
              child: Placeholder(),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              child: Placeholder(),
            ),
          ],
        ),
      ),
    );
  }
}
