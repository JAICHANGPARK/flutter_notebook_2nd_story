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
  bool xs = false;
  bool s = false;
  bool m = false;
  bool l = false;
  bool xl = false;
  bool xxl = false;

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
                          decoration: BoxDecoration(color: Colors.black),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              height: MediaQuery.of(context).size.height / 4.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "COMBINED",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4),
                  ),
                  Text(
                    "TEXTURE DRESS",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "ZARA",
                        style: TextStyle(
                            letterSpacing: 1.5, color: Colors.blueGrey[400]),
                      ),
                      Text(
                        "\$49.99",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, letterSpacing: 2),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 3,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              height: MediaQuery.of(context).size.height / 3.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "SIZE",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  GridView.count(
                    padding: EdgeInsets.zero,
                    crossAxisCount: 3,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    childAspectRatio: 1.5,
                    shrinkWrap: true,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          setState(() {
                            xs = true;
                            s = false;
                            m = false;
                            l = false;
                            xl = false;
                            xxl = false;
                          });
                        },
                        child: Container(
                          height: 48,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2),
                              color: xs ? Colors.black : Colors.white),
                          child: Center(
                            child: Text(
                              "XS",
                              style: TextStyle(
                                color: xs ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            xs = false;
                            s = true;
                            m = false;
                            l = false;
                            xl = false;
                            xxl = false;
                          });
                        },
                        child: Container(
                          height: 48,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2),
                              color: s ? Colors.black : Colors.white),
                          child: Center(
                            child: Text(
                              "S",
                              style: TextStyle(
                                color: s ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            xs = false;
                            s = false;
                            m = true;
                            l = false;
                            xl = false;
                            xxl = false;
                          });
                        },
                        child: Container(
                          height: 48,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2),
                              color: m ? Colors.black : Colors.white),
                          child: Center(
                            child: Text(
                              "M",
                              style: TextStyle(
                                color: m ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            xs = false;
                            s = false;
                            m = false;
                            l = true;
                            xl = false;
                            xxl = false;
                          });
                        },
                        child: Container(
                          height: 48,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2),
                              color: l ? Colors.black : Colors.white),
                          child: Center(
                            child: Text(
                              "L",
                              style: TextStyle(
                                color: l ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            xs = false;
                            s = false;
                            m = false;
                            l = false;
                            xl = true;
                            xxl = false;
                          });
                        },
                        child: Container(
                          height: 48,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2),
                              color: xl ? Colors.black : Colors.white),
                          child: Center(
                            child: Text(
                              "XL",
                              style: TextStyle(
                                color: xl ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            xs = false;
                            s = false;
                            m = false;
                            l = false;
                            xl = false;
                            xxl = true;
                          });
                        },
                        child: Container(
                          height: 48,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2),
                              color: xxl ? Colors.black : Colors.white),
                          child: Center(
                            child: Text(
                              "XXL",
                              style: TextStyle(
                                color: xxl ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 10,
                decoration: BoxDecoration(color: Colors.black),
                child: Center(
                  child: Text(
                    "ADD TO CART",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                thickness: 3,
                color: Colors.black,
              ),
            ),
            Column(
              children: <Widget>[
                ExpansionTile(title: Text("PRODUCT DETAILS", style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),),
                children: <Widget>[
                  Text("Place your Product Text"),
                ],),
                ExpansionTile(title: Text("SHIPPING"),),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                thickness: 3,
                color: Colors.black,
              ),
            ),
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
