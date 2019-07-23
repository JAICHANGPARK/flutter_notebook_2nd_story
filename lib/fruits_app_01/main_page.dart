import 'package:flutter/material.dart';

class FruitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainAppPage(),
    );
  }
}

class MainAppPage extends StatefulWidget {
  @override
  _MainAppPageState createState() => _MainAppPageState();
}

class _MainAppPageState extends State<MainAppPage>
    with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 16,
            ),
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                height: 28,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[
                    Expanded(flex: 1, child: Icon(Icons.wb_sunny)),
                    Expanded(
                      flex: 8,
                      child: Container(
                        height: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        padding: EdgeInsets.only(left: 16, right: 16),
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(16)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              size: 16,
                            ),
                            Text("Delivery to the: Southeast Seattle..."),
                            Icon(
                              Icons.play_arrow,
                              size: 16,
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(flex: 1, child: Icon(Icons.search)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                height: 160,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 1,
                          spreadRadius: 2,
                          offset: Offset(1, 3))
                    ]),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 28,
                      left: 16,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Import lemon",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Fresh perfume seedless",
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 15,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 24,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.circular(16)),
                            child: Center(
                              child: Text(
                                "Buy Now",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white70),
              child: Row(
                children: <Widget>[
                  Expanded(child: Placeholder()),
                  Expanded(child: Placeholder()),
                  Expanded(child: Placeholder()),
                  Expanded(child: Placeholder())
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                height: 32,
                child: TabBar(
                    isScrollable: true,
                    controller: _tabController,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.white70,
                    labelStyle: TextStyle(fontSize: 18),
                    tabs: [
                      Tab(
                        text: "Fruit tea",
                      ),
                      Tab(
                        text: "Salad",
                      ),
                      Tab(
                        text: "Carving",
                      ),
                      Tab(
                        text: "Basket",
                      ),
                      Tab(
                        text: "Fruit tea",
                      )
                    ]),
              ),
            ),
            Container(
              height: 130,
              child: TabBarView(controller: _tabController, children: [
                Container(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(8),
                        width: 110,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 4,
                                    spreadRadius: 2)
                              ]),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              margin: EdgeInsets.only(bottom: 8, right: 8),
                              height: 28,
                              width: 38,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    "\$38",
                                    style: TextStyle(color: Colors.white70),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        width: 110,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 4,
                                    spreadRadius: 2)
                              ]),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              margin: EdgeInsets.only(bottom: 8, right: 8),
                              height: 28,
                              width: 38,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    "\$38",
                                    style: TextStyle(color: Colors.white70),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        width: 110,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 4,
                                    spreadRadius: 2)
                              ]),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              margin: EdgeInsets.only(bottom: 8, right: 8),
                              height: 28,
                              width: 38,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    "\$38",
                                    style: TextStyle(color: Colors.white70),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        width: 110,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 4,
                                    spreadRadius: 2)
                              ]),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              margin: EdgeInsets.only(bottom: 8, right: 8),
                              height: 28,
                              width: 38,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    "\$38",
                                    style: TextStyle(color: Colors.white70),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        width: 110,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 4,
                                    spreadRadius: 2)
                              ]),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              margin: EdgeInsets.only(bottom: 8, right: 8),
                              height: 28,
                              width: 38,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    "\$38",
                                    style: TextStyle(color: Colors.white70),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(),
                Container(),
                Container(),
                Container(),
              ]),
            ),
            SizedBox(
              height: 16,
            ),
            Align(
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  "Selling",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              alignment: Alignment.centerLeft,
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 140,
              margin: EdgeInsets.only(left: 16, right: 16),
              padding: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 5,
                        spreadRadius: 2)
                  ]),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Placeholder(),
                  ),
                  SizedBox(width: 8,),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 16,
                        ),
                        Flexible(
                          child: Container(
                            height: 38,
                            child: Text(
                                "Big single avocado fresh imported fruits from the Mexico"),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Flexible(
                              child: Container(
                                child: Text("80%"),
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Flexible(
                              child: Container(
                                child: Text("Import"),
                                decoration: BoxDecoration(
                                    color: Colors.greenAccent,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("\$18.78",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 18
                            ),),
                            CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.green,
                              child: Center(
                                child: Icon(Icons.shopping_cart,
                                 size: 16,),
                              ),
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
            )
          ],
        ),
      ),
    );
  }
}























