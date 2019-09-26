import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TravelAround extends StatelessWidget {
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
  List<Widget> _buildTopWidget(BuildContext context) {
    return [
      Positioned(
        left: 0,
        right: 0,
        top: 0,
        child: Container(
          height: 220,
          padding: EdgeInsets.only(left: 24, right: 24, bottom: 32),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2017/01/14/07/40/vietnam-1978917_960_720.jpg"),
                  fit: BoxFit.cover)),
          child: Column(
            children: <Widget>[
              Spacer(),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    color: Colors.white,
                    size: 12,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Your current location",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Ha Noi",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(
                    Icons.cloud,
                    color: Colors.white,
                    size: 24,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "32",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      Positioned(
        top: 196,
        left: 24,
        right: 24,
        child: Card(
          elevation: 16,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Container(
            height: 48,
            padding: EdgeInsets.only(left: 8, top: 4),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.search),
                  hintText: "Hi Dreamwalker, fine everything on your location",
                  hintStyle: TextStyle(fontSize: 13)),
            ),
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ..._buildTopWidget(context),
          Positioned(
            left: 24,
            top: 280,
            child: Container(
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 24),
                    child: Container(
                      height: 24,
                      width: MediaQuery.of(context).size.width - 48,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Resort, hotel",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "See All",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 176,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: <Widget>[
                        Container(
                          width: 300,
                          margin: EdgeInsets.only(top: 8, right: 12),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 4,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Colors.red,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://cdn.pixabay.com/photo/2017/01/14/12/48/hotel-1979406__340.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: EdgeInsets.only(
                                    top: 8,
                                    left: 4,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Vinpearl Resort",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Icon(
                                                Icons.location_on,
                                                size: 14,
                                                color: Colors.blue,
                                              ),
                                              Text(
                                                "500m",
                                                style: TextStyle(
                                                    color: Colors.blue),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Container(
                                        height: 28,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Center(child: Text("\$300/per")),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 300,
                          margin: EdgeInsets.only(top: 8, right: 12),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 4,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Colors.red,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://cdn.pixabay.com/photo/2017/01/14/12/48/hotel-1979406__340.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: EdgeInsets.only(
                                    top: 8,
                                    left: 4,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Vinpearl Resort",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Icon(
                                                Icons.location_on,
                                                size: 14,
                                                color: Colors.blue,
                                              ),
                                              Text(
                                                "500m",
                                                style: TextStyle(
                                                    color: Colors.blue),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Container(
                                        height: 28,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          border:
                                          Border.all(color: Colors.grey),
                                          borderRadius:
                                          BorderRadius.circular(6),
                                        ),
                                        child: Center(child: Text("\$300/per")),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 300,
                          margin: EdgeInsets.only(top: 8, right: 12),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 4,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Colors.red,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://cdn.pixabay.com/photo/2017/01/14/12/48/hotel-1979406__340.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: EdgeInsets.only(
                                    top: 8,
                                    left: 4,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Vinpearl Resort",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Icon(
                                                Icons.location_on,
                                                size: 14,
                                                color: Colors.blue,
                                              ),
                                              Text(
                                                "500m",
                                                style: TextStyle(
                                                    color: Colors.blue),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Container(
                                        height: 28,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          border:
                                          Border.all(color: Colors.grey),
                                          borderRadius:
                                          BorderRadius.circular(6),
                                        ),
                                        child: Center(child: Text("\$300/per")),
                                      )
                                    ],
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
          )
        ],
      ),
      bottomNavigationBar: _buildBottomWidget(context),
    );
  }

  Widget _buildBottomWidget(BuildContext context) {
    return BottomAppBar(
      elevation: 16,
      child: Container(
        height: 68,
        padding: EdgeInsets.only(left: 24, right: 24),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 3,
                  width: 48,
                  decoration: BoxDecoration(color: Colors.blueAccent),
                ),
                Icon(
                  Icons.location_on,
                  color: Colors.blue,
                ),
                Text(
                  "Location",
                  style: TextStyle(color: Colors.blue),
                ),
                SizedBox(
                  height: 4,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 3,
                  width: 48,
                  decoration: BoxDecoration(color: Colors.transparent),
                ),
                Icon(
                  Icons.open_in_browser,
                  color: Colors.grey,
                ),
                Text(
                  "Explorer",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(
                  height: 4,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 3,
                  width: 48,
                  decoration: BoxDecoration(color: Colors.transparent),
                ),
                Icon(
                  Icons.calendar_today,
                  color: Colors.grey,
                ),
                Text(
                  "Plane",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(
                  height: 4,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 3,
                  width: 48,
                  decoration: BoxDecoration(color: Colors.transparent),
                ),
                Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                ),
                Text(
                  "Favorite",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(
                  height: 4,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 3,
                  width: 48,
                  decoration: BoxDecoration(color: Colors.transparent),
                ),
                Icon(
                  Icons.person_outline,
                  color: Colors.grey,
                ),
                Text(
                  "Explorer",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(
                  height: 4,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
