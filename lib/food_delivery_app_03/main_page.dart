import 'package:flutter/material.dart';

class FoodDeliveryApp03 extends StatelessWidget {
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
        child:
        Column(
          children: <Widget>[
                SafeArea(
                  top: true,
                  left: true,
                  right: true,
                  child: Container(
                    height: 64,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 9,
                          child: Container(
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(4)
                            ),
                          ),
                          
                        ),
                        Flexible(
                          flex: 2,
                          child: Center(
                            child: IconButton(
                              icon: Icon(Icons.menu),
                              onPressed: (){},
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                )
          ],
        ),
      ),
    );
  }
}


























