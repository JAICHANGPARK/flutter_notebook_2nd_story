import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/note_utils/note_image.dart';

class GoalsApp extends StatelessWidget {
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
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                height: 80,
                padding: EdgeInsets.only(left: 24, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(dreamwalkerImg),
                    ),
                    Icon(Icons.notifications_none)
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              padding: EdgeInsets.only(left: 24),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Hello,",
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                  Text(
                    "Dreamwalker",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 280,
              padding: EdgeInsets.only(left: 24),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Here are your goals",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "see all",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 240,
                    margin: EdgeInsets.only(top: 16),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: <Widget>[
                        Container(
                          width: 200,
                          margin: EdgeInsets.only(right: 16),
                          padding: EdgeInsets.only(
                          top: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.deepPurple.withOpacity(0.7)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Container(
                                  height: 38,
                                  width: 38,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        left: -8,
                                        top: -16,
                                        child: Container(
                                          height: 38,
                                          width: 38,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white.withOpacity(0.8)
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: -12,
                                        child: Container(
                                          height: 38,
                                          width: 38,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white.withOpacity(0.5)
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Text("Lose 15 Ibs",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24
                                ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Text("Become even prettier\nand wear that\ngargeous dress!",
                                style: TextStyle(
                                  fontSize: 12,
                                  letterSpacing: 1.2,
                                  color: Colors.white.withOpacity(0.7)
                                ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16, right: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text("Progress", style: TextStyle(
                                      color: Colors.white,
                                    ),),
                                    Text("50%",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16
                                      ),)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 0,),
                                child: Container(
                                  height: 12,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.lightBlueAccent,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(16),
                                        bottomRight: Radius.circular(16)
                                    )
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 200,
                          margin: EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.redAccent.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  )

                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}














