import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClothingApp extends StatelessWidget {
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
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: MediaQuery.of(context).size.height / 2.2,
            child: Container(
              padding:
                  EdgeInsets.only(left: 16, right: 16, top: 38, bottom: 32),
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5), BlendMode.darken),
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2016/11/16/10/28/two-girls-1828539_960_720.jpg"),
                    fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.add_shopping_cart,
                        color: Colors.white,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 4,
                        width: 16,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Container(
                        height: 4,
                        width: 4,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Container(
                        height: 4,
                        width: 4,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Container(
                        height: 4,
                        width: 4,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: MediaQuery.of(context).size.height / 2.55,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(24))),
              padding: EdgeInsets.only(top: 16),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Recommend",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),),
                        Text("See All >",style: TextStyle(
                          color: Colors.grey,
                        ),)
                      ],
                    ),
                  ),
                  SizedBox(height: 16,),
                  Container(
                    height: 48,
                    child: Placeholder(),
                  ),
                  SizedBox(height: 16,),
                  Container(height: 264,
                  child: Placeholder(),)
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 12,
        child: Container(
          height: 64,
        ),
      ),
    );
  }
}


















