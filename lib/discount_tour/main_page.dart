import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/note_utils/note_image.dart';

class DiscountTour extends StatelessWidget {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 48, left: 16, right: 16),
              child: Container(
                child: Row(
                  children: (<Widget>[
                    Icon(Icons.menu),
                    Spacer(),
                    Icon(
                      Icons.flight_takeoff,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "DiscountTour",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer()
                  ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 42),
              child: Text(
                "Find the best tour",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 16),
              child: Text(
                "Country",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, top: 16),
              height: MediaQuery.of(context).size.height / 3.4,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 8, bottom: 8, right: 16),
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2019/06/01/09/16/ocean-4243709_960_720.jpg"),
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.15),
                                BlendMode.darken),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 3,
                              spreadRadius: 1,
                              offset: Offset(0, 2))
                        ]),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 16,
                          left: 16,
                          right: 16,
                          child: Container(
                            height: 28,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 24,
                                  width: 48,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "New",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 16,
                          right: 8,
                          child: Container(
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(dreamwalkerImg)),
                                color: Colors.green,
                                shape: BoxShape.circle),
                          ),
                        ),
                        Positioned(
                          top: 16,
                          right: 28,
                          child: Container(
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2019/08/23/13/45/koreanfashion-4425752_960_720.jpg"),
                                    fit: BoxFit.cover),
                                color: Colors.blue,
                                shape: BoxShape.circle),
                          ),
                        ),
                        Positioned(
                          top: 16,
                          right: 48,
                          child: Container(
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2015/09/02/12/58/woman-918788_960_720.jpg"),
                                    fit: BoxFit.cover),
                                color: Colors.red,
                                shape: BoxShape.circle),
                          ),
                        ),
                        Positioned(
                          bottom: 16,
                          left: 16,
                          right: 16,
                          child: Container(
                            height: 58,
                            decoration: BoxDecoration(
//                              color: Colors.blueAccent
                                ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Thailand",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.2,
                                          fontSize: 18),
                                    ),
                                    Text(
                                      "18 Tours",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 28,
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(.3),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "4.5",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 16,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8, bottom: 8, right: 16),
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2019/09/08/10/41/landscape-4460685_960_720.jpg"),
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.15),
                                BlendMode.darken),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 3,
                              spreadRadius: 1,
                              offset: Offset(0, 2))
                        ]),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 16,
                          left: 16,
                          right: 16,
                          child: Container(
                            height: 24,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 24,
                                  width: 48,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Sole",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 16,
                          right: 8,
                          child: Container(
                            padding: EdgeInsets.only(left: 3, right: 8),
                            height: 24,
                            width: 58,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(16)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 22,
                                  width: 22,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(dreamwalkerImg)),
                                      color: Colors.green,
                                      shape: BoxShape.circle),
                                ),
                                Text(
                                  "+36",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 16,
                          left: 16,
                          right: 16,
                          child: Container(
                            height: 58,
                            decoration: BoxDecoration(
//                              color: Colors.blueAccent
                                ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Malaysia",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.2,
                                          fontSize: 18),
                                    ),
                                    Text(
                                      "12 Tours",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 28,
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(.3),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "4.3",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 16,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8, bottom: 8, right: 16),
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2019/06/01/09/16/ocean-4243709_960_720.jpg"),
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.15),
                                BlendMode.darken),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 3,
                              spreadRadius: 1,
                              offset: Offset(0, 2))
                        ]),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 16,
                          left: 16,
                          right: 16,
                          child: Container(
                            height: 28,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 24,
                                  width: 48,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "New",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 16,
                          right: 8,
                          child: Container(
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(dreamwalkerImg)),
                                color: Colors.green,
                                shape: BoxShape.circle),
                          ),
                        ),
                        Positioned(
                          top: 16,
                          right: 28,
                          child: Container(
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2019/08/23/13/45/koreanfashion-4425752_960_720.jpg"),
                                    fit: BoxFit.cover),
                                color: Colors.blue,
                                shape: BoxShape.circle),
                          ),
                        ),
                        Positioned(
                          top: 16,
                          right: 48,
                          child: Container(
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2015/09/02/12/58/woman-918788_960_720.jpg"),
                                    fit: BoxFit.cover),
                                color: Colors.red,
                                shape: BoxShape.circle),
                          ),
                        ),
                        Positioned(
                          bottom: 16,
                          left: 16,
                          right: 16,
                          child: Container(
                            height: 58,
                            decoration: BoxDecoration(
//                              color: Colors.blueAccent
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Thailand",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.2,
                                          fontSize: 18),
                                    ),
                                    Text(
                                      "18 Tours",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 28,
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(.3),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "4.5",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 16,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16, top: 16),
              child: Text(
                "Poluar tours",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: 210,
              child: ListView(

                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 16, right: 16, bottom: 8),
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.blue[50]
                    ),
                  )
                ],
              ),
            )



          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 4,
        child: Container(
          height: 64,
          padding: EdgeInsets.only(left: 8, right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home, color: Colors.green,),
                onPressed: (){},
              ),
              IconButton(
                icon: Icon(Icons.star, color: Colors.grey,),
                onPressed: (){},
              ),
              IconButton(
                icon: Icon(Icons.favorite ,color: Colors.grey,),
                onPressed: (){},
              ), IconButton(
                icon: Icon(Icons.credit_card ,color: Colors.grey,),
                onPressed: (){},
              ),
              IconButton(
                icon: Icon(Icons.search ,color: Colors.grey,),
                onPressed: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}














