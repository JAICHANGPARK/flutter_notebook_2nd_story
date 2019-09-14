import 'package:flutter/material.dart';

class DiscountTour extends StatelessWidget {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 48, left: 16, right: 16),
              child: Container(
                child: Row(
                  children: (<Widget>[
                    Icon(Icons.menu),
                    Spacer(),
                    Icon(
                      Icons.flight_takeoff,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "DiscountTour",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer()
                  ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 42),
              child: Text(
                "Find the best tour",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 16),
              child: Text(
                "Country",
                style: TextStyle(color: Colors.blueGrey, fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, top: 8),
              height: MediaQuery.of(context).size.height / 3.4,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 8, bottom: 8, right: 16),
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(color: Colors.black.withOpacity(0.2),
                        blurRadius: 3,
                        spreadRadius: 1,
                        offset: Offset(0, 2))
                      ]
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8, bottom: 8, right: 16),
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(color: Colors.black.withOpacity(0.2),
                              blurRadius: 3,
                              spreadRadius: 1,
                              offset: Offset(0, 2))
                        ]
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8, bottom: 8, right: 16),
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(color: Colors.black.withOpacity(0.2),
                              blurRadius: 3,
                              spreadRadius: 1,
                              offset: Offset(0, 2))
                        ]
                    ),
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











