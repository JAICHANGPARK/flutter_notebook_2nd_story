import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/note_utils/note_image.dart';

class FitnessApp extends StatelessWidget {
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

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f3f3),
      body: Column(
        children: <Widget>[
          Flexible(
            fit: FlexFit.tight,
            flex: 7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Hi Dreamwalker",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(dreamwalkerImg),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Text(
                    "What workout would you like to do today?",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        iconSize: 48,
                        icon: Icon(Icons.timer),
                        onPressed: () {},
                      ),
                      IconButton(
                        iconSize: 48,
                        icon: Icon(Icons.directions_bike),
                        onPressed: () {},
                        color: Colors.grey,
                      ),
                      IconButton(
                        iconSize: 48,
                        icon: Icon(Icons.directions_run),
                        color: Colors.grey,
                        onPressed: () {},
                      ),
                      IconButton(
                        iconSize: 48,
                        icon: Icon(Icons.fitness_center),
                        color: Colors.grey,
                        onPressed: () {},
                      ),
                      IconButton(
                        iconSize: 48,
                        icon: Icon(Icons.transfer_within_a_station),
                        color: Colors.grey,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 48,
                  margin: EdgeInsets.only(left: 16, right: 16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4)),
                  padding: EdgeInsets.only(
                    left: 16,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "What is your goal",
                        border: InputBorder.none,
                        icon: Icon(Icons.search)),
                  ),
                ),
                SizedBox(
                  height: 36,
                ),
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      topLeft: Radius.circular(16))),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 16,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 4,
                      width: 48,
                      decoration:
                          BoxDecoration(color: Colors.grey.withOpacity(0.5)),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  TabBar(
                    controller: _tabController,
                    labelColor: Colors.black,
                    indicatorColor: Colors.deepPurpleAccent,
                    indicatorPadding: EdgeInsets.only(left: 8, right: 8),
                    unselectedLabelColor: Colors.grey,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorWeight: 1,
                    tabs: <Widget>[
                      Tab(
                        text: "Weight Gain",
                      ),
                      Tab(
                        text: "Weight Loss",
                      ),
                      Tab(
                        text: "Maintain",
                      )
                    ],
                  ),
                  Container(
                    height: 218,
                    child: TabBarView(controller: _tabController, children: [
                      ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 8, right: 8, top: 8),
                            width: 150,
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 8,
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 8),
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                          top: 16,
                                          left: 16,
                                          right: 16,
                                          child: Column(
                                            children: <Widget>[
                                              Text(
                                                "Strength & Conditioning",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16),
                                              ),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.access_time,
                                                    color: Colors.white,
                                                    size: 14,
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Text(
                                                    "45 minutes",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 8,
                                          left: 8,
                                          child: Container(
                                            height: 48,
                                            width: 48,
                                            decoration: BoxDecoration(
                                                color: Colors.redAccent,
                                                image: DecorationImage(image:
                                                NetworkImage(dreamwalkerImg),
                                                fit: BoxFit.cover),
                                                border: Border.all(
                                                    color: Colors.white,
                                                    width: 3),
                                                borderRadius:
                                                    BorderRadius.circular(9))
                                            ,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        "#2 Weight training",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "4.8 / 5",
                                        style: TextStyle(
                                            color: Colors.redAccent,
                                            fontSize: 12),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8, right: 8, top: 8),
                            width: 150,
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 8,
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 8),
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                          top: 16,
                                          left: 16,
                                          right: 16,
                                          child: Column(
                                            children: <Widget>[
                                              Text(
                                                "Strength & Conditioning",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16),
                                              ),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.access_time,
                                                    color: Colors.white,
                                                    size: 14,
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Text(
                                                    "45 minutes",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 8,
                                          left: 8,
                                          child: Container(
                                            height: 48,
                                            width: 48,
                                            decoration: BoxDecoration(
                                                color: Colors.redAccent,
                                                image: DecorationImage(image:
                                                NetworkImage(dreamwalkerImg),
                                                    fit: BoxFit.cover),
                                                border: Border.all(
                                                    color: Colors.white,
                                                    width: 3),
                                                borderRadius:
                                                BorderRadius.circular(9))
                                            ,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        "#2 Weight training",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "4.8 / 5",
                                        style: TextStyle(
                                            color: Colors.redAccent,
                                            fontSize: 12),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8, right: 8, top: 8),
                            width: 150,
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 8,
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 8),
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                          top: 16,
                                          left: 16,
                                          right: 16,
                                          child: Column(
                                            children: <Widget>[
                                              Text(
                                                "Strength & Conditioning",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16),
                                              ),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.access_time,
                                                    color: Colors.white,
                                                    size: 14,
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Text(
                                                    "45 minutes",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 8,
                                          left: 8,
                                          child: Container(
                                            height: 48,
                                            width: 48,
                                            decoration: BoxDecoration(
                                                color: Colors.redAccent,
                                                image: DecorationImage(image:
                                                NetworkImage(dreamwalkerImg),
                                                    fit: BoxFit.cover),
                                                border: Border.all(
                                                    color: Colors.white,
                                                    width: 3),
                                                borderRadius:
                                                BorderRadius.circular(9))
                                            ,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        "#2 Weight training",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "4.8 / 5",
                                        style: TextStyle(
                                            color: Colors.redAccent,
                                            fontSize: 12),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8, right: 8, top: 8),
                            width: 150,
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 8,
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 8),
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                          top: 16,
                                          left: 16,
                                          right: 16,
                                          child: Column(
                                            children: <Widget>[
                                              Text(
                                                "Strength & Conditioning",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16),
                                              ),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.access_time,
                                                    color: Colors.white,
                                                    size: 14,
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Text(
                                                    "45 minutes",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 8,
                                          left: 8,
                                          child: Container(
                                            height: 48,
                                            width: 48,
                                            decoration: BoxDecoration(
                                                color: Colors.redAccent,
                                                image: DecorationImage(image:
                                                NetworkImage(dreamwalkerImg),
                                                    fit: BoxFit.cover),
                                                border: Border.all(
                                                    color: Colors.white,
                                                    width: 3),
                                                borderRadius:
                                                BorderRadius.circular(9))
                                            ,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        "#2 Weight training",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "4.8 / 5",
                                        style: TextStyle(
                                            color: Colors.redAccent,
                                            fontSize: 12),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(),
                      Container(),
                    ]),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedIconTheme: IconThemeData(color: Colors.grey),
          selectedIconTheme: IconThemeData(color: Colors.black),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text(""),
            ),
          ]),
    );
  }
}
