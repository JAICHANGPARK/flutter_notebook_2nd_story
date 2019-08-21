import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/note_utils/note_image.dart';

class MusicStreamingApp extends StatelessWidget {
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
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Container(
                        height: 62,
                        width: 62,
                        padding: EdgeInsets.all(4),
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black, width: 2)),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.blueGrey,
                          ),
                        ),
                      );
                    },
                    itemCount: 20,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                  ),
                ),
                VerticalDivider(
                  width: 0,
                  thickness: 2,
                  color: Colors.black.withOpacity(0.2),
                ),
                Expanded(
                    flex: 9,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 48,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 16, right: 16),
                            height: 300,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Dreamwalker",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Spacer(),
                                    Text(
                                      "Profile",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_right,
                                      size: 16,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  height: 180,
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        height: 180,
                                        width: 180,
                                        decoration: BoxDecoration(
                                            color: Colors.pink,
                                            boxShadow: [
                                              BoxShadow(color: Colors.black.withOpacity(0.2),
                                              blurRadius: 4,
                                              spreadRadius: 3)
                                            ],
                                            image: DecorationImage(
                                                image: NetworkImage(""
                                                    "https://upload.wikimedia.org/wikipedia/en/thumb/1/18/Kids_See_Ghost_Cover.jpg/220px-Kids_See_Ghost_Cover.jpg"),
                                                fit: BoxFit.cover),
                                            borderRadius:
                                                BorderRadius.circular(16)),
                                      ),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          IconButton(
                                            icon: Icon(Icons.add),
                                            onPressed: () {},
                                          ),
                                          FloatingActionButton(
                                            heroTag: "play",
                                            child: Icon(Icons.play_arrow,
                                            color: Colors.black,),
                                            onPressed: () {},
                                            elevation: 0,
                                            backgroundColor: Colors.grey.withOpacity(0.4),
                                          ),
                                          IconButton(
                                            icon: Icon(Icons.favorite_border),
                                            onPressed: () {},
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  "Kids See Ghosts",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                ),
                                Text(
                                  "Kanye West and Kid Cudi",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 16,
                              right: 16,
                            ),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                          Container(
                            height: 280,
                            decoration: BoxDecoration(color: Colors.blueGrey),
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 16, right: 16),
                            height: 300,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Dreamwalker",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Spacer(),
                                    Text(
                                      "Profile",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_right,
                                      size: 16,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  height: 180,
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        height: 180,
                                        width: 180,
                                        decoration: BoxDecoration(
                                            color: Colors.pink,
                                            boxShadow: [
                                              BoxShadow(color: Colors.black.withOpacity(0.2),
                                                  blurRadius: 4,
                                                  spreadRadius: 3)
                                            ],
                                            image: DecorationImage(
                                                image: NetworkImage(""
                                                    "https://upload.wikimedia.org/wikipedia/en/thumb/1/18/Kids_See_Ghost_Cover.jpg/220px-Kids_See_Ghost_Cover.jpg"),
                                                fit: BoxFit.cover),
                                            borderRadius:
                                            BorderRadius.circular(16)),
                                      ),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          IconButton(
                                            icon: Icon(Icons.add),
                                            onPressed: () {},
                                          ),
                                          FloatingActionButton(
                                            heroTag: "play",
                                            child: Icon(Icons.play_arrow,
                                              color: Colors.black,),
                                            onPressed: () {},
                                            elevation: 0,
                                            backgroundColor: Colors.grey.withOpacity(0.4),
                                          ),
                                          IconButton(
                                            icon: Icon(Icons.favorite_border),
                                            onPressed: () {},
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  "Kids See Ghosts",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                ),
                                Text(
                                  "Kanye West and Kid Cudi",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 120,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 1,
                    spreadRadius: 2)
              ]),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Center(
                      child: Icon(Icons.menu),
                    ),
                  ),
                  VerticalDivider(
                    width: 0,
                    thickness: 2,
                    color: Colors.black.withOpacity(0.2),
                  ),
                  Expanded(
                    flex: 9,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Kids See Ghosts",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Kanye West and Kid Cudi",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Spacer(),
                          FloatingActionButton(
                            child: Icon(
                              Icons.pause,
                              color: Colors.white,
                            ),
                            backgroundColor: Colors.black,
                            elevation: 0,
                            onPressed: () {},
                          )
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
    );
  }
}
