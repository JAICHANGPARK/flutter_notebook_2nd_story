import 'package:flutter/material.dart';

class ClothingApp extends StatelessWidget {
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
            bottom: MediaQuery.of(context).size.height / 2,
            child: Container(
              padding:
                  EdgeInsets.only(left: 16, right: 16, top: 38, bottom: 16),
              decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2016/11/16/10/28/two-girls-1828539_960_720.jpg"),
                      fit: BoxFit.cover)),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.add_shopping_cart,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: MediaQuery.of(context).size.height / 2.5,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(24))),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 12,
        child: Container(
          height: 64,
        ),
      ),
    );
  }
}
