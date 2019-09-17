import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/yoga_app/detail_page.dart';

class YogaApp extends StatelessWidget {
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
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 7,
              padding: EdgeInsets.only(bottom: 16, left: 24),
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.blueGrey.withOpacity(0.3),
                    blurRadius: 12,
                    spreadRadius: 4)
              ]),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "YOGA SEQUENCES",
                  style: TextStyle(
                      color: Colors.black87, fontSize: 20, letterSpacing: 1.5),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 24),
              child: Text(
                "DISCOVER",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
                margin: EdgeInsets.all(16),
                height: MediaQuery.of(context).size.height / 1.48,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context)=> DetailPage()
                            )

                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.blueGrey,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2017/07/31/11/41/people-2557547_960_720.jpg"),
                                  fit: BoxFit.cover)),
                          padding: EdgeInsets.only(left: 16, bottom: 16, top: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    height: 32,
                                    width: 32,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blueGrey[50],
                                        border: Border.all(
                                            color: Colors.black, width: 1)),
                                    child: Center(
                                      child: Icon(
                                        Icons.whatshot,
                                        size: 16,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "HOT",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Container(
                                height: 28,
                                width: 64,
                                decoration: BoxDecoration(
                                    color: Colors.blueGrey[100],
                                    borderRadius: BorderRadius.circular(24)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.av_timer,
                                      size: 14,
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      "25 min",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "SUN SALUTATION",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text("surya namaskar"),
                              SizedBox(
                                height: 16,
                              ),
                              Container(
                                height: 28,
                                width: 72,
                                decoration: BoxDecoration(
                                    color: Color(0xff003847),
                                    borderRadius: BorderRadius.circular(4),
                                    boxShadow: [
                                      BoxShadow(
                                          color:
                                              Color(0xff003847).withOpacity(0.2),
                                          blurRadius: 7,
                                          spreadRadius: 5)
                                    ]),
                                child: Center(
                                  child: Text(
                                    "START",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        letterSpacing: 2),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.blueGrey,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2017/07/31/11/41/people-2557545_960_720.jpg"),
                                fit: BoxFit.cover)),
                        padding: EdgeInsets.only(left: 16, bottom: 16, top: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 32,
                                  width: 32,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blueGrey[50],
                                      border: Border.all(
                                          color: Colors.black, width: 1)),
                                  child: Center(
                                    child: Icon(
                                      Icons.whatshot,
                                      size: 16,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "HOT",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                            Spacer(),
                            Container(
                              height: 28,
                              width: 64,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey[100],
                                  borderRadius: BorderRadius.circular(24)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.av_timer,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "18 min",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "HEART OPENING",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("heart chakra"),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              height: 28,
                              width: 72,
                              decoration: BoxDecoration(
                                  color: Color(0xff003847),
                                  borderRadius: BorderRadius.circular(4),
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            Color(0xff003847).withOpacity(0.2),
                                        blurRadius: 7,
                                        spreadRadius: 5)
                                  ]),
                              child: Center(
                                child: Text(
                                  "START",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      letterSpacing: 2),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
        bottomNavigationBar: _buildBottomNavigationBar());
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
        currentIndex: pageIndex,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
        showSelectedLabels: true,
        selectedIconTheme: IconThemeData(
          color: Color(0xff003847),
        ),
        selectedLabelStyle: TextStyle(
          color: Color(0xff003847),
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.grey,
        ),
        onTap: (newIndex) {
          setState(() {
            pageIndex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(
                "Home",
                style: TextStyle(
                  color: Color(0xff003847),
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), title: Text("Favourites")),
          BottomNavigationBarItem(icon: Icon(Icons.shop), title: Text("Shop")),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text("Settings"))
        ]);
  }
}
