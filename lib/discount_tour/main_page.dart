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
                    Icon(Icons.flight_takeoff, color: Colors.teal,),
                    SizedBox(width: 4,),
                    Text("DiscountTour", style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),),
                    Spacer()
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
















