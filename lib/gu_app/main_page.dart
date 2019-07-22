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
                          hintText: "WOMAN(レディース)商品を検索",
                          hintStyle: TextStyle(
                            fontSize: 14,
                          )
                        ),
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































