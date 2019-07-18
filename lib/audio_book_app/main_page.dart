import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/audio_book_app/detail_page.dart';

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
//              decoration: BoxDecoration(color: Colors.deepPurpleAccent),
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
                          color: Colors.deepPurple),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    left: 0,
                    bottom: 16,
                    child: Transform.translate(
                      offset: Offset(-100, 0),
                      child: Transform.rotate(
                        child: Container(
                          height: 240,
                          width: 240,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xffe26564)),
                          child: Center(
                            child: Text(
                              "DESIGN & ART",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ),
                        angle: -1.58,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 64,
                    top: 48,
                    bottom: 48,
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)
                        => AudioDetailPage()));
                      },
                      child: Hero(
                        tag: "home_01",
                        child: Container(
                          width: 110,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              border: Border.all(color: Colors.white, width: 4),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "http://demo.cmssuperheroes.com/themeforest/bookjunky/wp-content/uploads/the_world.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 42,
                    top: 62,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "The World",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              letterSpacing: 1.5),
                        ),
                        Text(
                          "Of Abstract Art",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              letterSpacing: 1.5),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "56:18  *  10 Chapters",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                          children: <Widget>[
                            FloatingActionButton(
                              child: Icon(
                                Icons.play_arrow,
                                color: Colors.deepPurple,
                              ),
                              backgroundColor: Colors.white,
                              elevation: 0,
                              onPressed: () {},
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Play Now",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
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
                    width: 160,
                    margin: EdgeInsets.only(top: 8, bottom: 8, right: 8),
//                    decoration: BoxDecoration(border: Border.all()),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 24, bottom: 8),
                          decoration: BoxDecoration(
                              color: Color(0xffe26564),
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 4,
                                    spreadRadius: 3,
                                    offset: Offset(0, 3))
                              ]),
                        ),
                        Positioned(
                          left: 16,
                          top: 0,
                          right: 42,
                          child: Container(
                            height: 150,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 4,
                                      spreadRadius: 3)
                                ],
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://is1-ssl.mzstatic.com/image/thumb/Video20/v4/c8/a3/ab/c8a3aba1-b364-d325-512c-338fcebfa3d2/pr_source.lsr/268x0w.png"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Positioned(
                          bottom: 24,
                          left: 16,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "13 Hours",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "56:18 * 10 Chapters",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    letterSpacing: 1.5),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 160,
                    margin:
                        EdgeInsets.only(top: 8, bottom: 8, right: 8, left: 8),
//                    decoration: BoxDecoration(border: Border.all()),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 24, bottom: 8),
                          decoration: BoxDecoration(
                              color: Color(0xffe26564),
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 4,
                                    spreadRadius: 3,
                                    offset: Offset(0, 3))
                              ]),
                        ),
                        Positioned(
                          left: 16,
                          top: 0,
                          right: 42,
                          child: Container(
                            height: 150,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 4,
                                      spreadRadius: 3)
                                ],
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://is1-ssl.mzstatic.com/image/thumb/Video20/v4/c8/a3/ab/c8a3aba1-b364-d325-512c-338fcebfa3d2/pr_source.lsr/268x0w.png"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Positioned(
                          bottom: 24,
                          left: 16,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "13 Hours",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "56:18 * 10 Chapters",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    letterSpacing: 1.5),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 160,
                    margin:
                        EdgeInsets.only(top: 8, bottom: 8, right: 8, left: 8),
//                    decoration: BoxDecoration(border: Border.all()),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 24, bottom: 8),
                          decoration: BoxDecoration(
                              color: Color(0xffe26564),
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 4,
                                    spreadRadius: 3,
                                    offset: Offset(0, 3))
                              ]),
                        ),
                        Positioned(
                          left: 16,
                          top: 0,
                          right: 42,
                          child: Container(
                            height: 150,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 4,
                                      spreadRadius: 3)
                                ],
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://is1-ssl.mzstatic.com/image/thumb/Video20/v4/c8/a3/ab/c8a3aba1-b364-d325-512c-338fcebfa3d2/pr_source.lsr/268x0w.png"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Positioned(
                          bottom: 24,
                          left: 16,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "13 Hours",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "56:18 * 10 Chapters",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    letterSpacing: 1.5),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 160,
                    margin:
                        EdgeInsets.only(top: 8, bottom: 8, right: 8, left: 8),
//                    decoration: BoxDecoration(border: Border.all()),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 24, bottom: 8),
                          decoration: BoxDecoration(
                              color: Color(0xffe26564),
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 4,
                                    spreadRadius: 3,
                                    offset: Offset(0, 3))
                              ]),
                        ),
                        Positioned(
                          left: 16,
                          top: 0,
                          right: 42,
                          child: Container(
                            height: 150,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 4,
                                      spreadRadius: 3)
                                ],
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://is1-ssl.mzstatic.com/image/thumb/Video20/v4/c8/a3/ab/c8a3aba1-b364-d325-512c-338fcebfa3d2/pr_source.lsr/268x0w.png"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Positioned(
                          bottom: 24,
                          left: 16,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "13 Hours",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "56:18 * 10 Chapters",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    letterSpacing: 1.5),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
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
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            )),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.book),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.book),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 64,
                  ),
                  IconButton(
                    icon: Icon(Icons.book),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.book),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed: (){},
        heroTag: "testing",
        elevation: 8,
      backgroundColor: Colors.deepPurple,
        child: Icon(Icons.add,
        color: Colors.orange,size: 38,),
      ),
    );
  }
}





























