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
              height: MediaQuery.of(context).size.height / 10,
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
              padding: EdgeInsets.only(left: 24),
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    width: 240,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 4,
                          top: 0,
                          right: 8,
                          bottom: 8,
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 3,
                                      spreadRadius: 2)
                                ],
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2019/02/22/08/36/japan-4013068_960_720.jpg"),
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                        Colors.black26, BlendMode.darken)),
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                        Positioned(
                          top: 16,
                          left: 0,
                          child: Container(
                            height: 38,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(7),
                                    bottomRight: Radius.circular(7))),
                            child: Center(
                              child: Text(
                                "06 days 16 hours",
                                style: TextStyle(
                                    color: Colors.white, letterSpacing: 1.5),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 62,
                          left: 0,
                          child: Container(
                            height: 38,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.red[300],
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(7),
                                    bottomRight: Radius.circular(7))),
                            child: Center(
                              child: Text(
                                "-20%",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 240,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 4,
                          top: 0,
                          right: 8,
                          bottom: 8,
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 3,
                                      spreadRadius: 2)
                                ],
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2019/02/22/08/36/japan-4013068_960_720.jpg"),
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                        Colors.black26, BlendMode.darken)),
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                        Positioned(
                          top: 16,
                          left: 0,
                          child: Container(
                            height: 38,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(7),
                                    bottomRight: Radius.circular(7))),
                            child: Center(
                              child: Text(
                                "06 days 16 hours",
                                style: TextStyle(
                                    color: Colors.white, letterSpacing: 1.5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
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
