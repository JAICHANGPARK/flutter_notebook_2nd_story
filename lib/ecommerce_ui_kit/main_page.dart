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
              height: MediaQuery.of(context).size.height / 1.7,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    top: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2016/06/17/09/54/woman-1462985_960_720.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 34,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.keyboard_arrow_left),
                          ),
                          IconButton(
                            icon: Icon(Icons.search),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 16,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(color: Colors.green),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.green)),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.green)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 5,
              child: Placeholder(),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3.5,
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
              icon: Icon(Icons.favorite_border), title: Text("Catalog")),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart), title: Text("Catalog")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text("Catalog")),
        ],
      ),
    );
  }
}
