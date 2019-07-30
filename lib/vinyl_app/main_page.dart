import 'package:flutter/material.dart';


class VinylApp extends StatelessWidget {
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
    _tabController = TabController(length: 4, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                height: 44,
                margin: EdgeInsets.only(left: 24, right: 24, top: 24),
                padding: EdgeInsets.only(left: 16),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(32),

                ),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search, color: Colors.white,),
                    border: InputBorder.none,
                    hintText: "Artists, releases & more",
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    ),
                    suffixIcon: CircleAvatar(radius: 12,)
                  ),
                )
              ),
            ),
          ),
          SizedBox(height: 32,),
          Positioned(
            top: 110,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(32),
                  topLeft: Radius.circular(32),
                )
              ),
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 140,
                    decoration: BoxDecoration(

                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 16,
                          top: 16,
                          bottom: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Hello,", style: TextStyle(
                                fontSize: 38
                              ),),
                              Text("Dreamwalker!",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: 24,
                          top: 16,
                          child: Transform.rotate(child: Icon(Icons.tune,
                          color: Colors.grey,
                          size: 28,), angle: 1.55,),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 32,
                    child: TabBar(
                      unselectedLabelColor: Colors.grey,
                      labelColor: Colors.black,
                      indicatorColor: Colors.purple,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorPadding: EdgeInsets.only(left: 80, right: 80),
                      tabs: [
                      Tab(text: "Hot",),
                      Tab(text: "Recommendations",),
                      Tab(text: "New Release",),
                        Tab(text: "New Release",),

                    ], controller: _tabController,),
                  ),
                  Container(
                    height: 280,
                    child: TabBarView(children: [
                      Container(),
                      Container(),
                      Container(),
                      Container(),
                    ], controller: _tabController,),
                  ),
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}


































