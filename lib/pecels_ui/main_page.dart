import 'package:flutter/material.dart';

class PixelsUIApp extends StatelessWidget {
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
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 38),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 48,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.menu),
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: Colors.teal[400],
                      ),
                      child: Center(
                        child: Icon(
                          Icons.photo_filter,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Icon(Icons.search)
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 280,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 5,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white, width: 4),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2019/09/12/18/34/krakow-4472321__340.jpg"
                                  ),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white, width: 4),
                                image: DecorationImage(
                                  image: NetworkImage("https://cdn.pixabay.com/photo/2019/07/16/20/48/dolomites-4342572__340.jpg"),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 4),
                            image: DecorationImage(
                                image: NetworkImage("https://cdn.pixabay.com/photo/2019/08/06/02/16/landscape-4387209__340.jpg"),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 140,
                child: Placeholder(),
              ),
              Container(
                height: 280,
                child: Placeholder(),
              )
            ],
          ),
        ),
      ),
    );
  }
}





















