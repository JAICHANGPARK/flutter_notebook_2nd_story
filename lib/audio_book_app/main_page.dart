import 'package:flutter/material.dart';

class AudioBookApp extends StatelessWidget {
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
            SizedBox(
              height: 48,
            ),
            Container(
              padding: EdgeInsets.only(left: 24),
              height: 64,
              decoration: BoxDecoration(),
              child: Row(
                children: <Widget>[
                  Material(
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Au",
                          style: TextStyle(
                              color: Colors.deepPurpleAccent,
                              fontSize: 24,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: "Book",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold)),
                    ])),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.apps),
                    color: Colors.orange,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              height: 260,
              decoration: BoxDecoration(color: Colors.deepPurpleAccent),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 24,
                    top: 0,
                    bottom: 0,
                    right: 16,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: Colors.deepPurple
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    left: 0,
                    bottom: 16,
                    child:Transform.translate(
                      offset: Offset(-120, 0),
                      child: Transform.rotate(
                        child: Container(
                          height: 240,
                          width: 240,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffe26564)
                          ),
                          child: Center(
                            child: Text("DESIGN & ART", style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                            ),),
                          ),
                        ), angle: 2.6,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 64,
                    top: 48,
                    bottom: 48,
                    child: Container(
                      width: 110,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(
                          color: Colors.white,
                          width: 4
                        )
                      ),
                    ),
                  ),
                  Positioned(
                    right: 48,
                    top: 62,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("The World", style: TextStyle(
                          color: Colors.white
                        ),),
                        Text("Of Abstract Art",
                        style: TextStyle(
                          color: Colors.white
                        ),),
                        Text("56:18  *  10 Chapters",style: TextStyle(
                          color: Colors.white
                        ),)
                      ],
                    ),
                  )



                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "New Arrivals",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 24),
              height: 240,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 180,
                    margin: EdgeInsets.only(top: 8, bottom: 8, right: 8),
                    decoration: BoxDecoration(border: Border.all()),
                  ),
                  Container(
                    width: 180,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(border: Border.all()),
                  ),
                  Container(
                    width: 180,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(border: Border.all()),
                  ),
                  Container(
                    width: 180,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(border: Border.all()),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Best Sellers",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          )
        ),
      ),
    );
  }
}


























