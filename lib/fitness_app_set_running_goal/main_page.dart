import 'package:flutter/material.dart';

class FitnessSetRunningApp extends StatelessWidget {
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
      backgroundColor: Color(0xff181E27),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 160,
              child: Center(
                child: Container(
                  height: 4,
                  width: 64,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: SizedBox(
                height: 80,
                width: 260,
                child: Text(
                  "Set Running Goals",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      letterSpacing: 1.2),
                ),
              ),
            ),
            TextField()
          ],
        ),
      ),
    );
  }
}














