import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:flutter_notebook_second_story/note_utils/note_image.dart';

class LoveReadingApp extends StatelessWidget {
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
    var deviceMedia = MediaQuery.of(context);
    Color blackColor = Color(0xff393939);
    Color yellowColor = Color(0xffffB900);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: blackColor),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: <Widget>[
          Center(
            child: Badge(
              badgeContent: Text(''),
              child: Icon(
                Icons.mail_outline,
                color: blackColor,
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.settings,
              color: blackColor,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Container(
            height: deviceMedia.size.height / 3,
            width: deviceMedia.size.width,
            decoration: BoxDecoration(),
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("Dreamwalker", style: TextStyle(
                        color: blackColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      ),),
                      Text("Flutter Developer",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16
                      ),),
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text('15K',
                              style: TextStyle(
                              color: blackColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                            ),
                            Text('Books', style: TextStyle(
                              color: Colors.grey
                            ),),
                          ],
                        ),
                        Container(
                          height: 140,
                          width: 140,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                left: 0,
                                right: 0,
                                bottom: 0,
                                top: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.red,
                                    image: DecorationImage(image:
                                    NetworkImage(dreamwalkerImg),
                                    fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 12,
                                top: 4,
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    color: yellowColor,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 3
                                    )
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text('7K',style: TextStyle(
                                color: blackColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                            ),),
                            Text('Followers',style: TextStyle(
                                color: Colors.grey
                            ),),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 16,),
          Container(
            height: deviceMedia.size.height / 4,
            width: deviceMedia.size.width,
            decoration: BoxDecoration(),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24
                  ),
                  child: Row(
                    children: <Widget>[
                      Text("Reading List", style: TextStyle(
                        color: blackColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w700
                      ),),
                      Spacer(),
                      Text("View more",
                      style: TextStyle(
                        color: Colors.grey
                      ),),
                      Icon(Icons.arrow_forward_ios, size: 12,
                      color: Colors.grey,),
                    ],
                  ),
                ),
                SizedBox(height: 8,),
                Container(
                  margin: EdgeInsets.only(left: 16),
                  height: 154,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(8),
                        width: 98,
                        decoration: BoxDecoration(
                          color: Colors.red
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        width: 98,
                        decoration: BoxDecoration(
                            color: Colors.red
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        width: 98,
                        decoration: BoxDecoration(
                            color: Colors.red
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        width: 98,
                        decoration: BoxDecoration(
                            color: Colors.red
                        ),
                      ),
                    ],
                  ),
                )

              ],
            ),
          ),
          Container(
            height: deviceMedia.size.height / 4.6,
            width: deviceMedia.size.width,
            decoration: BoxDecoration(),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24
                  ),
                  child: Row(
                    children: <Widget>[
                      Text("All Reviews", style: TextStyle(
                          color: blackColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w700
                      ),),
                      Spacer(),
                      Text("View more",
                        style: TextStyle(
                            color: Colors.grey
                        ),),
                      Icon(Icons.arrow_forward_ios, size: 12,
                        color: Colors.grey,),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  height: 120,
                  margin: EdgeInsets.only(left: 24,
                  right: 24,
                  top: 8),
                  padding: EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                    border: Border.all()
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 64,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                      ),
                      SizedBox(width: 8,),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("All Group Up"),
                            Text("This beaufifully illistrated stroy of a young\n"
                                "boy trying to find a quiet..."),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.star, color: Colors.yellow,
                                    size: 12,)
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme: IconThemeData(color: yellowColor),
          selectedLabelStyle: TextStyle(
            color: blackColor
          ),
          currentIndex: pageIndex,
          onTap: (newValue) {
            setState(() {
              pageIndex = newValue;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                title: Text(
                  "Books",
                  style: TextStyle(color: Colors.grey),
                ),
                icon: Icon(
                  Icons.book,
                  color: blackColor,
                )),
            BottomNavigationBarItem(
                title: Text(
                  "Library",
                  style: TextStyle(color: Colors.grey),
                ),
                icon: Icon(
                  Icons.library_books,
                  color: blackColor,
                )),
            BottomNavigationBarItem(
                title: Text(
                  "Discover",
                  style: TextStyle(color: Colors.grey),
                ),
                icon: Icon(
                  Icons.history,
                  color: blackColor,
                )),
            BottomNavigationBarItem(
                title: Text(
                  "Me",
                  style: TextStyle(color: Colors.grey),
                ),
                icon: Icon(
                  Icons.person_outline,
                  color: blackColor,
                ))
          ]),
    );
  }
}









































