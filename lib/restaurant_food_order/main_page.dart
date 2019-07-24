import 'package:flutter/material.dart';

class RestaurantFoodOrderApp extends StatelessWidget {
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),
          color: Colors.grey,
          onPressed: (){},),
          IconButton(icon: Icon(Icons.notifications),
            color: Colors.grey,
            onPressed: (){},)
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            children: <Widget>[
              Container(
                child: Text("Explore our\nDelicious Offers",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),),
              )

            ],
          ),
        ),
      ),
    );
  }
}




































