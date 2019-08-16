import 'package:flutter/material.dart';

class TicketApp extends StatelessWidget {
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
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                height: 54,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 8,
                      child: Placeholder(),
                    ),
                    Expanded(
                      flex: 2,
                      child: Placeholder(),
                    )
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

















