import 'package:flutter/material.dart';

class TravelApp02 extends StatelessWidget {
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
      backgroundColor: Colors.blueGrey[50],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 32,
              ),
              SafeArea(
                top: true,
                left: true,
                right: true,
                child: Text("Collections", style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold
                ),),
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                height: 52,
                padding: EdgeInsets.only(left: 16),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.search),
                      hintText: "Search place or list..."
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



























