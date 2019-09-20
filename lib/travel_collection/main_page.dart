import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TravelCollection extends StatelessWidget {
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
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 6,
              padding: EdgeInsets.only(left: 24, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 8,
                    child: Container(
                      margin: EdgeInsets.only(top: 48, bottom: 36, right: 16),
                      padding: EdgeInsets.only(left: 16),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(4)),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search for place",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Badge(
                      badgeContent: Text("1"),
                      child: Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 10,
              padding: EdgeInsets.only(left: 24, bottom: 16),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: SelectableText(
                    "Ondue",
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              padding: EdgeInsets.only(left: 24),
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    width: 240,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 4,
                          top: 0,
                          right: 8,
                          bottom: 8,
                          child: Container(
                            padding: EdgeInsets.only(
                                bottom: 16, left: 16, right: 16),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 3,
                                      spreadRadius: 2)
                                ],
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2019/02/22/08/36/japan-4013068_960_720.jpg"),
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                        Colors.black26, BlendMode.darken)),
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Spacer(),
                                Text(
                                  "Tokyo",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      letterSpacing: 2),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent,
                                      size: 12,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent,
                                      size: 12,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent,
                                      size: 12,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent,
                                      size: 12,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.orangeAccent,
                                      size: 12,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.flight_takeoff,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    Text(
                                      "Japan, Dec 29, 2019",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.loyalty,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    Text(
                                      "02/12 Seats",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "\$770",
                                      style: TextStyle(
                                        color: Colors.red[200],
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 16,
                          left: 0,
                          child: Container(
                            height: 38,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(7),
                                    bottomRight: Radius.circular(7))),
                            child: Center(
                              child: Text(
                                "06 days 16 hours",
                                style: TextStyle(
                                    color: Colors.white, letterSpacing: 1.5),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 62,
                          left: 0,
                          child: Container(
                            height: 38,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.red[300],
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(7),
                                    bottomRight: Radius.circular(7))),
                            child: Center(
                              child: Text(
                                "-20%",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 240,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 4,
                          top: 0,
                          right: 8,
                          bottom: 8,
                          child: Container(
                            padding: EdgeInsets.only(
                                bottom: 16, left: 16, right: 16),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 3,
                                      spreadRadius: 2)
                                ],
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2019/02/22/08/36/japan-4013068_960_720.jpg"),
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                        Colors.black26, BlendMode.darken)),
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Spacer(),
                                Text(
                                  "Tokyo",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      letterSpacing: 2),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent,
                                      size: 12,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent,
                                      size: 12,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent,
                                      size: 12,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent,
                                      size: 12,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.orangeAccent,
                                      size: 12,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.flight_takeoff,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    Text(
                                      "Japan, Dec 29, 2019",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.loyalty,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    Text(
                                      "02/12 Seats",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "\$770",
                                      style: TextStyle(
                                        color: Colors.red[200],
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 16,
                          left: 0,
                          child: Container(
                            height: 38,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(7),
                                    bottomRight: Radius.circular(7))),
                            child: Center(
                              child: Text(
                                "06 days 16 hours",
                                style: TextStyle(
                                    color: Colors.white, letterSpacing: 1.5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 16),
              height: MediaQuery.of(context).size.height / 12,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "view all -".toUpperCase(),
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 16),
              height: MediaQuery.of(context).size.height / 11,
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  unselectedLabelColor: Colors.grey,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 16
                  ),
                  indicatorColor: Colors.black,
                  labelColor: Colors.black,
                  labelStyle: TextStyle(
                    fontSize: 28
                  ),
                  controller: _tabController,

                  tabs: <Widget>[
                    Tab(
                      text: "Favorite",
                    ),
                    Tab(
                      text: "New",
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  Container(
                    child: Center(
                      child: Text("Page 1 "),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text("Page 2 "),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
