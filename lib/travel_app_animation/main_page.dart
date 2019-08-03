import 'package:flutter/material.dart';
class TravelAppWithAnimation extends StatelessWidget {
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

class _MainPageState extends State<MainPage>
with TickerProviderStateMixin{
  AnimationController _animationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this, duration:
    Duration(milliseconds: 1000));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
























