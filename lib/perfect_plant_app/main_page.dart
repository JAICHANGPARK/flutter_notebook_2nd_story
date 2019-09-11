import 'package:flutter/material.dart';

class PerfectPlantApp extends StatelessWidget {
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
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              padding: EdgeInsets.only(left: 24),
              height: MediaQuery.of(context).size.height / 2.8,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.3), BlendMode.darken),
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2016/11/20/08/03/flowerpot-1842098_960_720.jpg"),
                      fit: BoxFit.cover)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 48,
                  ),
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 32,
                  ),
                  Text(
                    "My Plants",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            top: MediaQuery.of(context).size.height / 2.8 - 20,
            child: Container(
              height: 38,
              margin: EdgeInsets.all(4),
              padding: EdgeInsets.only(left: 16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 4,
                        spreadRadius: 2)
                  ]),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.search,
                        color: Colors.tealAccent,
                      ),
                      hintText: "Search for a plant",
                      hintStyle: TextStyle(fontSize: 14)),
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
