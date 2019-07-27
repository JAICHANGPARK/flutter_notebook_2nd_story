import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/state_management/counter_provider.dart';
import 'package:provider/provider.dart';

class LampStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<CounterProvider>(
        builder: (_) => CounterProvider(),
        child: MainPage(),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Color appPurpleColor = Color(0xff4d4671);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SafeArea(
            top: true,
            left: true,
            right: true,
            child: Container(
              padding: EdgeInsets.only(right: 16),
              height: 68,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 68,
                    decoration: BoxDecoration(
                        color: appPurpleColor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16),
                            bottomRight: Radius.circular(16))),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 28,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Lamp",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        "Elegant accessories",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 380,
            margin: EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.white),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: 32,
                  right: 32,
                  bottom: 62,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "http://www.pngpix.com/wp-content/uploads/2016/11/PNGPIX-COM-Hanging-Lamp-PNG-Transparent-Image-500x544.png"),
                            fit: BoxFit.cover)),
                  ),
                ),
                Positioned(
                  right: 42,
                  top: 16,
                  child: Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                      color: appPurpleColor.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 62,
                  bottom: 180,
                  child: Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                      color: appPurpleColor.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Lamp Swarm",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: appPurpleColor,
                      size: 16,
                    ),
                    Icon(
                      Icons.star,
                      color: appPurpleColor,
                      size: 16,
                    ),
                    Icon(
                      Icons.star,
                      color: appPurpleColor,
                      size: 16,
                    ),
                    Icon(
                      Icons.star,
                      color: appPurpleColor,
                      size: 16,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey,
                      size: 16,
                    ),
                    SizedBox(width: 16,),
                    Text(
                      "245 Reviews",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 12),
                    ),
                    Spacer(),
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, border: Border.all()),
                      child: Center(
                        child: Icon(Icons.keyboard_arrow_down,),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}





















