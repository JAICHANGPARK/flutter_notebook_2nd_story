import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class RealEstateApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HouseListPage(),
    );
  }
}

class HouseListPage extends StatefulWidget {
  @override
  _HouseListPageState createState() => _HouseListPageState();
}

class _HouseListPageState extends State<HouseListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 48,
              ),
              Row(
                children: <Widget>[
                  Container(
                    height: 48,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                      color: Colors.blue
                    ),
                    child: Column(

                    ),
                  ),
                  Spacer(),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}






















