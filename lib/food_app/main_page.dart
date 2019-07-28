import 'package:flutter/material.dart';

class FoodApp extends StatelessWidget {
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
  Color searchBarColor = Color(0xfff5f4f7);
  Color iconContainerColor = Color(0xffffeee8);
  Color appIconColor = Color(0xff020e3a);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                height: 48,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.menu,
                      color: appIconColor,
                      size: 32,
                    ),
                    Icon(
                      Icons.move_to_inbox,
                      color: appIconColor,
                      size: 32,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Delivering to",
                    style: TextStyle(color: appIconColor),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Current location",
                        style: TextStyle(
                            color: appIconColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2),
                      ),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 48,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 8,
                    child: Container(
                      margin: EdgeInsets.only(left: 16, right: 16),
                      decoration: BoxDecoration(
                          color: appIconColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                            hintText: "Search foods",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey)),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: IconButton(
                      icon: Icon(Icons.tune),
                      onPressed: () {},
                      color: appIconColor,
                      iconSize: 32,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              margin: EdgeInsets.only(left: 16),
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    width: 100,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 7,
                          child: Container(
                            decoration: BoxDecoration(
                                color: iconContainerColor,
                                borderRadius: BorderRadius.circular(16)),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Center(
                              child: Text("Burger"),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    width: 100,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 7,
                          child: Container(
                            decoration: BoxDecoration(
                                color: iconContainerColor,
                                borderRadius: BorderRadius.circular(16)),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Center(
                              child: Text("Dessert"),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    width: 100,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 7,
                          child: Container(
                            decoration: BoxDecoration(
                                color: iconContainerColor,
                                borderRadius: BorderRadius.circular(16)),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Center(
                              child: Text("Pizza"),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    width: 100,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 7,
                          child: Container(
                            decoration: BoxDecoration(
                                color: iconContainerColor,
                                borderRadius: BorderRadius.circular(16)),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Center(
                              child: Text("Asian"),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    width: 100,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 7,
                          child: Container(
                            decoration: BoxDecoration(
                                color: iconContainerColor,
                                borderRadius: BorderRadius.circular(16)),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Center(
                              child: Text("Burger"),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    width: 100,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 7,
                          child: Container(
                            decoration: BoxDecoration(
                                color: iconContainerColor,
                                borderRadius: BorderRadius.circular(16)),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Center(
                              child: Text("Burger"),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


























