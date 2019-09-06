import 'package:flutter/material.dart';

class TravelApp02 extends StatelessWidget {
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
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 32,
              ),
              SafeArea(
                top: true,
                left: true,
                right: true,
                child: Text("Collections", style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold
                ),),
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                height: 52,
                padding: EdgeInsets.only(left: 16),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Center(
                  child: TextField(
                    controller: _textEditingController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.search),
                      hintText: "Search place or list..."
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("My List", style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),),
                    Spacer(),
                    Text("Show all", style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 340,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 260,
                      margin: EdgeInsets.only(right: 16),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 4,
                            top: 0,
                            right: 0,
                            bottom: 12,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 3,
                                    spreadRadius: 1
                                  )
                                ]
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 16,
                            child: Container(
                              height: 32,
                              width: 4,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(16)
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 260,
                      margin: EdgeInsets.only(right: 16),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 4,
                            top: 0,
                            right: 0,
                            bottom: 12,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        blurRadius: 3,
                                        spreadRadius: 1
                                    )
                                  ]
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 16,
                            child: Container(
                              height: 32,
                              width: 4,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(16)
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



























