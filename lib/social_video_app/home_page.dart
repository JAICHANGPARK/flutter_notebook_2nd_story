import 'package:flutter/material.dart';

class SocialVideoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(),
            height: 180,
            child: Row(

              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: Icon(Icons.menu),
                      iconSize: 38,
                      color: Colors.blue,
                      onPressed: () {}),
                ),
                Expanded(
                  flex: 8,
                    child: Container(
                      padding: EdgeInsets.only(top: 72),
                      color: Color(0xfff6f5fa),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("My Favourites",style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                          ),),
                          SizedBox(height: 24,),
                          Container(
                            height: 32,
                            decoration: BoxDecoration(

                            ),
                            child: Center(
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    left: 0,
                                    right: 0,
                                    top: 16,
                                    child: Container(
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 9,
                                    child: Container(
                                      height: 16,
                                      width: 16,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Colors.blue,
                                          width: 4
                                        )
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 24,
                                    top: 9,
                                    child: Container(
                                      height: 16,
                                      width: 16,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border: Border.all(
                                              color: Colors.indigo,
                                              width: 4
                                          )
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 48,
                                    top: 14,
                                    child: Container(
                                      height: 5,
                                      width: 160,
                                      decoration: BoxDecoration(
                                        color: Colors.lightBlue,
                                        borderRadius: BorderRadius.circular(8)
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 24,
                                    top: 9,
                                    child: Container(
                                      height: 16,
                                      width: 16,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border: Border.all(
                                              color: Colors.indigo,
                                              width: 4
                                          )
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 180,
            child: Placeholder(),
          )
        ],
      ),
    );
  }
}





















