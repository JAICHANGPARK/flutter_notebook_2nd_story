import 'package:flutter/material.dart';

const Color guBlueColor = Color(0xff12288a);

class GuAppClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(accentColor: guBlueColor),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  int pageIndex = 0;
  List<Widget> pageWidget = [];
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                color: guBlueColor,
                height: MediaQuery.of(context).size.height / 11.5,
                child: Row(children: <Widget>[
                  Expanded(
                    flex: 12,
                    child: Container(
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16)),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "WOMEN(レディース)商品を検索",
                            hintStyle: TextStyle(
                              fontSize: 14,
                            )),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: IconButton(
                      icon: Icon(Icons.center_focus_weak),
                      onPressed: () {},
                      color: Colors.white,
                      iconSize: 38,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: IconButton(
                      icon: Icon(Icons.shopping_cart),
                      onPressed: () {},
                      color: Colors.white,
                      iconSize: 38,
                    ),
                  ),
                ]),
              ),
            ),
            TabBar(

              onTap: (newTabIndex){
                setState(() {
                });
              },
              unselectedLabelColor: Colors.black,
              labelColor: Colors.black,
              indicatorPadding: EdgeInsets.zero,
              labelPadding: EdgeInsets.zero,
              controller: tabController,
              indicatorWeight: 3,
              tabs: <Widget>[
                Tab(
                  text: "WOMEN",
                ),
                Tab(
                  text: "MEN",
                ),
                Tab(
                  text: "KIDS",
                )
              ],
            ),
            Container(

              height: MediaQuery.of(context).size.height - 120,
              child: TabBarView(

                  controller: tabController,
                  physics: BouncingScrollPhysics(),
                  children: [
                    ListView(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        Container(
                          height: 460,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 8,
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: 
                                    NetworkImage("https://www.gu-japan.com/jp/feature/denimskirt/women/pc/img/190708_img_04_m.jpg"),
                                    fit: BoxFit.cover)
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                     child: Container(
                                       decoration: BoxDecoration(
                                         image: DecorationImage(image:
                                         NetworkImage("https://www.gu-japan.com/jp/feature/material/sc/img/190716_w_sports.jpg"),
                                         fit: BoxFit.cover)
                                       ),
                                     ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image:
                                            NetworkImage("https://www.gu-japan.com/jp/feature/material/sc/img/190712_w_19a.jpg"),
                                                fit: BoxFit.cover)
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(),
                    Container(),
                  ]),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(color: guBlueColor),
          selectedLabelStyle: TextStyle(color: guBlueColor),
          showSelectedLabels: true,
          currentIndex: pageIndex,
          onTap: (newIndex) {
            setState(() {
              pageIndex = newIndex;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                title: Text("トップ")),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), title: Text("見つける")),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), title: Text("リスト")),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books), title: Text("ニュース")),
            BottomNavigationBarItem(
                icon: Icon(Icons.perm_identity), title: Text("会員証")),
          ]),
    );
  }
}
