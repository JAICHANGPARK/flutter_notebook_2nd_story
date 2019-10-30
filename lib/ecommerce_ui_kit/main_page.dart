import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/audio_book_app/main_page.dart';

class ECommerceUiKit extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 1.8,
              child: Placeholder(),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 5,
              child: Placeholder(),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        elevation: 14,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.indigo,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text("Catalog")),
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text("Catalog")),
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text("Catalog")),
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text("Catalog")),
        ],
      ),
    );
  }
}
