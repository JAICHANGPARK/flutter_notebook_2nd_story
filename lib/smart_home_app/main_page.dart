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
  bool lightValue = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this);
    animation = Tween<double>(begin: 80, end: 480).animate(animationController)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((s) {
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
            right: 0,
            child: Column(
              children: <Widget>[
                Container(
                  height: 48,
                  decoration: BoxDecoration(color: appBrownColor),
                ),
                Container(
                  height: 48,
                  decoration: BoxDecoration(color: appPurpleColor),
                )
              ],
            ),
          ),
          Positioned(
            left: 100,
            top: 96,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2017/09/09/18/25/living-room-2732939_960_720.jpg"),
                fit: BoxFit.cover)
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 16,
                    top: 32,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Temperature",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),),
                        Text("27 C",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.white
                        ),)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
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
                  Positioned(
                    left: 30,
                    bottom: 100,
                    child: Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white,)
                      ),
                      child: Center(
                        child: Icon(Icons.keyboard_arrow_down,
                        color: Colors.white,),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    bottom: 160,
                    child: Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white,)
                      ),
                      child: Center(
                        child:Icon(Icons.keyboard_arrow_up,
                        color: Colors.white,),
                      ),
                    ),

                  )
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
          ),
          Positioned(
            right: 0,
            left: 100,
            bottom: 0,
            child: Container(
              height: 200,
              padding: EdgeInsets.only(left: 24, top: 24, bottom: 16),
              decoration: BoxDecoration(
                color: appPurpleColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                )
              ),
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 140,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        SizedBox(height:16),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            
                          ),
                        ),
                        Text("The lamp"),
                        Switch(value: lightValue, onChanged: (bool value) {
                          setState(() {
                            lightValue = value;

                          });
                        },
                        activeColor: appBrownColor,)
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 140,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(16)
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 140,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 140,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


































