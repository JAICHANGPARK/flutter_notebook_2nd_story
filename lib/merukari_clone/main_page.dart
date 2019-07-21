import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MerukariClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme.of(context).platform == TargetPlatform.android
        ? MaterialApp(
            home: HomePage(),
          )
        : CupertinoApp(
            home: CupertinoHomePage(),
          );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 24,
          ),
          Container(
            height: 120,
            width: MediaQuery.of(context).size.width,
            child: Placeholder(),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 210,
            child: Placeholder(),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme: IconThemeData(color: Colors.black),
          selectedLabelStyle: TextStyle(
            color: Colors.black,
          ),
          unselectedLabelStyle: TextStyle(color: Colors.black),
          currentIndex: 0,
          unselectedIconTheme: IconThemeData(color: Colors.black),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                title: Text("ホーム")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications_none,
                ),
                title: Text("お知らせ")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.monetization_on,
                ),
                title: Text("メルペイ")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                ),
                title: Text("マイページ"))
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.redAccent,
        child: Icon(
          Icons.camera_alt,
          color: Colors.white,
        ),
      ),
    );
  }
}

class CupertinoHomePage extends StatefulWidget {
  @override
  _CupertinoHomePageState createState() => _CupertinoHomePageState();
}

class _CupertinoHomePageState extends State<CupertinoHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
