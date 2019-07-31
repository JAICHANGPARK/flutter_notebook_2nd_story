import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/note_utils/note_image.dart';

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
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        border: InputBorder.none,
                        hintText: "Artists, releases & more",
                        hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                        ),
                        suffixIcon: CircleAvatar(
                          radius: 12,
                          backgroundImage: NetworkImage(dreamwalkerImg),
                        )),
                  )),
            ),
          ),
          SizedBox(
            height: 32,
          ),
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
                    )),
                child: ListView(
                  children: <Widget>[
                    Container(
                      height: 140,
                      decoration: BoxDecoration(),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 16,
                            top: 16,
                            bottom: 0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Hello,",
                                  style: TextStyle(fontSize: 38),
                                ),
                                Text(
                                  "Dreamwalker!",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 24,
                            top: 16,
                            child: Transform.rotate(
                              child: Icon(
                                Icons.tune,
                                color: Colors.grey,
                                size: 28,
                              ),
                              angle: 1.55,
                            ),
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
                          Tab(
                            text: "Hot",
                          ),
                          Tab(
                            text: "Recommendations",
                          ),
                          Tab(
                            text: "New Release",
                          ),
                          Tab(
                            text: "New Release",
                          ),
                        ],
                        controller: _tabController,
                      ),
                    ),
                    Container(
                      height: 300,
                      child: TabBarView(
                        children: [
                          ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Container(
                                width: 160,
                                margin: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.15),
                                      blurRadius: 10,
                                      spreadRadius: 5
                                    )
                                  ]
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(16),
                                              topRight: Radius.circular(16),
                                            ),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://cdn.pixabay.com/photo/2019/05/04/15/24/art-4178302_960_720.jpg"),
                                                fit: BoxFit.cover)),
                                        child: Stack(
                                          children: <Widget>[
                                            Positioned(
                                              right: 0,
                                              top: 0,
                                              child: Container(
                                                width: 80,
                                                height: 32,
                                                decoration: BoxDecoration(
                                                    color: Colors.purple,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topRight:
                                                                Radius.circular(
                                                                    16))),
                                                child: Center(
                                                  child: Text(
                                                    "\$ 31.99",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                            top: 16,
                                            left: 16,
                                            right: 24,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text("Igor",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18
                                                ),),
                                                SizedBox(height: 8,),
                                                Text("Tyler, ther Creator 2019, TDC2841 Mint",
                                                style: TextStyle(
                                                  color: Colors.grey
                                                ),),
                                              ],
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 16,
                                            right: 16,
                                            child: Icon(Icons.arrow_forward,
                                            color: Colors.grey,size: 18,),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 160,
                                margin: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.15),
                                          blurRadius: 10,
                                          spreadRadius: 5
                                      )
                                    ]
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(16),
                                              topRight: Radius.circular(16),
                                            ),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://cdn.pixabay.com/photo/2019/05/04/15/24/art-4178302_960_720.jpg"),
                                                fit: BoxFit.cover)),
                                        child: Stack(
                                          children: <Widget>[
                                            Positioned(
                                              right: 0,
                                              top: 0,
                                              child: Container(
                                                width: 80,
                                                height: 32,
                                                decoration: BoxDecoration(
                                                    color: Colors.purple,
                                                    borderRadius:
                                                    BorderRadius.only(
                                                        topRight:
                                                        Radius.circular(
                                                            16))),
                                                child: Center(
                                                  child: Text(
                                                    "\$ 31.99",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                            top: 16,
                                            left: 16,
                                            right: 24,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text("Igor",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18
                                                  ),),
                                                SizedBox(height: 8,),
                                                Text("Tyler, ther Creator 2019, TDC2841 Mint",
                                                  style: TextStyle(
                                                      color: Colors.grey
                                                  ),),
                                              ],
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 16,
                                            right: 16,
                                            child: Icon(Icons.arrow_forward,
                                              color: Colors.grey,size: 18,),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 160,
                                margin: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.15),
                                          blurRadius: 10,
                                          spreadRadius: 5
                                      )
                                    ]
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(16),
                                              topRight: Radius.circular(16),
                                            ),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://cdn.pixabay.com/photo/2019/05/04/15/24/art-4178302_960_720.jpg"),
                                                fit: BoxFit.cover)),
                                        child: Stack(
                                          children: <Widget>[
                                            Positioned(
                                              right: 0,
                                              top: 0,
                                              child: Container(
                                                width: 80,
                                                height: 32,
                                                decoration: BoxDecoration(
                                                    color: Colors.purple,
                                                    borderRadius:
                                                    BorderRadius.only(
                                                        topRight:
                                                        Radius.circular(
                                                            16))),
                                                child: Center(
                                                  child: Text(
                                                    "\$ 31.99",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                            top: 16,
                                            left: 16,
                                            right: 24,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text("Igor",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18
                                                  ),),
                                                SizedBox(height: 8,),
                                                Text("Tyler, ther Creator 2019, TDC2841 Mint",
                                                  style: TextStyle(
                                                      color: Colors.grey
                                                  ),),
                                              ],
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 16,
                                            right: 16,
                                            child: Icon(Icons.arrow_forward,
                                              color: Colors.grey,size: 18,),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 160,
                                margin: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.15),
                                          blurRadius: 10,
                                          spreadRadius: 5
                                      )
                                    ]
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(16),
                                              topRight: Radius.circular(16),
                                            ),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://cdn.pixabay.com/photo/2019/05/04/15/24/art-4178302_960_720.jpg"),
                                                fit: BoxFit.cover)),
                                        child: Stack(
                                          children: <Widget>[
                                            Positioned(
                                              right: 0,
                                              top: 0,
                                              child: Container(
                                                width: 80,
                                                height: 32,
                                                decoration: BoxDecoration(
                                                    color: Colors.purple,
                                                    borderRadius:
                                                    BorderRadius.only(
                                                        topRight:
                                                        Radius.circular(
                                                            16))),
                                                child: Center(
                                                  child: Text(
                                                    "\$ 31.99",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                            top: 16,
                                            left: 16,
                                            right: 24,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text("Igor",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18
                                                  ),),
                                                SizedBox(height: 8,),
                                                Text("Tyler, ther Creator 2019, TDC2841 Mint",
                                                  style: TextStyle(
                                                      color: Colors.grey
                                                  ),),
                                              ],
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 16,
                                            right: 16,
                                            child: Icon(Icons.arrow_forward,
                                              color: Colors.grey,size: 18,),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 160,
                                margin: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.15),
                                          blurRadius: 10,
                                          spreadRadius: 5
                                      )
                                    ]
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(16),
                                              topRight: Radius.circular(16),
                                            ),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://cdn.pixabay.com/photo/2019/05/04/15/24/art-4178302_960_720.jpg"),
                                                fit: BoxFit.cover)),
                                        child: Stack(
                                          children: <Widget>[
                                            Positioned(
                                              right: 0,
                                              top: 0,
                                              child: Container(
                                                width: 80,
                                                height: 32,
                                                decoration: BoxDecoration(
                                                    color: Colors.purple,
                                                    borderRadius:
                                                    BorderRadius.only(
                                                        topRight:
                                                        Radius.circular(
                                                            16))),
                                                child: Center(
                                                  child: Text(
                                                    "\$ 31.99",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                            top: 16,
                                            left: 16,
                                            right: 24,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text("Igor",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18
                                                  ),),
                                                SizedBox(height: 8,),
                                                Text("Tyler, ther Creator 2019, TDC2841 Mint",
                                                  style: TextStyle(
                                                      color: Colors.grey
                                                  ),),
                                              ],
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 16,
                                            right: 16,
                                            child: Icon(Icons.arrow_forward,
                                              color: Colors.grey,size: 18,),
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
                          Container(),
                        ],
                        controller: _tabController,
                      ),
                    ),
                  ],
                )),
          ),
          SizedBox(height: 16,),
          Positioned(
            bottom: 100,
            left: 24,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("Vinyls Listed", style:
                TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21
                ),),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 3,
                    spreadRadius: 2
                  )
                ],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24),
                  topLeft: Radius.circular(24)
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: 80,
                    height: 40,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.purple.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                          Icon(Icons.home, color: Colors.purple,),
                          Text("Home", style: TextStyle(
                            color: Colors.purple
                          ),)
                      ],
                    ),
                  ),
                  Icon(Icons.music_note, color: Colors.grey,),
                  Icon(Icons.notifications_none,color: Colors.grey,),
                  Icon(Icons.menu,color: Colors.grey,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}



























