import 'package:flutter/material.dart';

const Color appPurpleColor = Color(0xff3e399b);
const Color appBrownColor = Color(0xffd7964a);

class SmartHomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;
  double initHeight = 80;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this);
    animation = Tween<double>(begin: 80, end: 480).animate(animationController)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: Container(
              width: 100,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(color: appPurpleColor),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 24,
                    top: 24,
                    child: IconButton(
                      icon: Icon(
                        Icons.menu,
                      ),
                      iconSize: 38,
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 120,
            bottom: 0,
            child: Transform.translate(
              offset: Offset(-400, -100),
              child: Transform.rotate(
                angle: 1.56,
                child: Container(
                  child: Text(
                    "Livingroom",
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 10,
                        fontWeight: FontWeight.bold,
                        fontSize: 48),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: InkWell(
              onTap: () {
                animationController.forward();
              },
              child: AnimatedContainer(
                width: 100,
                height: animation.value,
                decoration: BoxDecoration(color: appBrownColor),
                child: Center(
                  child: Text(
                    "ADD TO",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                duration: Duration(seconds: 1),
              ),
            ),
          )
        ],
      ),
    );
  }
}










