import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

class TravelAppConcept extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResultPage(),
    );
  }
}

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  int pageIndex = 0;
  List<Widget> items = [
    Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 3,
                spreadRadius: 2)
          ]),
      height: 120,
      child: Row(
        children: <Widget>[
          Container(
              width: 80,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2019/07/28/14/00/travel-4368774__340.jpg"),
                      fit: BoxFit.cover))),
          Container(
            width: 200,
            padding: EdgeInsets.only(left: 4, right: 8, top: 8),
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Maldives",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),),
                    Icon(
                      Icons.bookmark,
                      color: Colors.greenAccent,
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("Royal Hideaway",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black87
                      ),),
                    SizedBox(width: 8,),
                    Text("5", style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),),
                    Icon(Icons.star, color: Colors.yellow,)
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Center(
                            child: Icon(Icons.child_friendly,
                              color: Colors.deepPurple,),
                          ),
                        ),
                        SizedBox(height: 4,),
                        Text("Children", style: TextStyle(
                            fontSize: 9
                        ),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Center(
                            child: Icon(Icons.beach_access,
                              color: Colors.deepPurple,),
                          ),
                        ),
                        SizedBox(height: 4,),
                        Text("2 beds", style: TextStyle(
                            fontSize: 9
                        ),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Center(
                            child: Icon(Icons.local_bar,
                              color: Colors.deepPurple,),
                          ),
                        ),
                        SizedBox(height: 4,),
                        Text("Children", style: TextStyle(
                            fontSize: 9
                        ),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Center(
                            child: Icon(Icons.room_service,
                              color: Colors.deepPurple,),
                          ),
                        ),
                        SizedBox(height: 4,),
                        Text("service", style: TextStyle(
                            fontSize: 9
                        ),)
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 3,
                spreadRadius: 2)
          ]),
      height: 120,
      child: Row(
        children: <Widget>[
          Container(
              width: 80,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2019/07/28/14/00/travel-4368774__340.jpg"),
                      fit: BoxFit.cover))),
          Container(
            width: 200,
            padding: EdgeInsets.only(left: 4, right: 8, top: 8),
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Maldives",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),),
                    Icon(
                      Icons.bookmark,
                      color: Colors.greenAccent,
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("Royal Hideaway",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black87
                      ),),
                    SizedBox(width: 8,),
                    Text("5", style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),),
                    Icon(Icons.star, color: Colors.yellow,)
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Center(
                            child: Icon(Icons.child_friendly,
                              color: Colors.deepPurple,),
                          ),
                        ),
                        SizedBox(height: 4,),
                        Text("Children", style: TextStyle(
                            fontSize: 9
                        ),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Center(
                            child: Icon(Icons.beach_access,
                              color: Colors.deepPurple,),
                          ),
                        ),
                        SizedBox(height: 4,),
                        Text("2 beds", style: TextStyle(
                            fontSize: 9
                        ),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Center(
                            child: Icon(Icons.local_bar,
                              color: Colors.deepPurple,),
                          ),
                        ),
                        SizedBox(height: 4,),
                        Text("Children", style: TextStyle(
                            fontSize: 9
                        ),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Center(
                            child: Icon(Icons.room_service,
                              color: Colors.deepPurple,),
                          ),
                        ),
                        SizedBox(height: 4,),
                        Text("service", style: TextStyle(
                            fontSize: 9
                        ),)
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 3,
                spreadRadius: 2)
          ]),
      height: 120,
      child: Row(
        children: <Widget>[
          Container(
              width: 80,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2019/07/28/14/00/travel-4368774__340.jpg"),
                      fit: BoxFit.cover))),
          Container(
            width: 200,
            padding: EdgeInsets.only(left: 4, right: 8, top: 8),
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Maldives",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),),
                    Icon(
                      Icons.bookmark,
                      color: Colors.greenAccent,
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("Royal Hideaway",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black87
                      ),),
                    SizedBox(width: 8,),
                    Text("5", style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),),
                    Icon(Icons.star, color: Colors.yellow,)
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Center(
                            child: Icon(Icons.child_friendly,
                              color: Colors.deepPurple,),
                          ),
                        ),
                        SizedBox(height: 4,),
                        Text("Children", style: TextStyle(
                            fontSize: 9
                        ),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Center(
                            child: Icon(Icons.beach_access,
                              color: Colors.deepPurple,),
                          ),
                        ),
                        SizedBox(height: 4,),
                        Text("2 beds", style: TextStyle(
                            fontSize: 9
                        ),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Center(
                            child: Icon(Icons.local_bar,
                              color: Colors.deepPurple,),
                          ),
                        ),
                        SizedBox(height: 4,),
                        Text("Children", style: TextStyle(
                            fontSize: 9
                        ),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Center(
                            child: Icon(Icons.room_service,
                              color: Colors.deepPurple,),
                          ),
                        ),
                        SizedBox(height: 4,),
                        Text("service", style: TextStyle(
                            fontSize: 9
                        ),)
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 3,
                spreadRadius: 2)
          ]),
      height: 120,
      child: Row(
        children: <Widget>[
          Container(
              width: 80,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2019/07/28/14/00/travel-4368774__340.jpg"),
                      fit: BoxFit.cover))),
          Container(
            width: 200,
            padding: EdgeInsets.only(left: 4, right: 8, top: 8),
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Maldives",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),),
                    Icon(
                      Icons.bookmark,
                      color: Colors.greenAccent,
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("Royal Hideaway",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black87
                      ),),
                    SizedBox(width: 8,),
                    Text("5", style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),),
                    Icon(Icons.star, color: Colors.yellow,)
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Center(
                            child: Icon(Icons.child_friendly,
                              color: Colors.deepPurple,),
                          ),
                        ),
                        SizedBox(height: 4,),
                        Text("Children", style: TextStyle(
                            fontSize: 9
                        ),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Center(
                            child: Icon(Icons.beach_access,
                              color: Colors.deepPurple,),
                          ),
                        ),
                        SizedBox(height: 4,),
                        Text("2 beds", style: TextStyle(
                            fontSize: 9
                        ),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Center(
                            child: Icon(Icons.local_bar,
                              color: Colors.deepPurple,),
                          ),
                        ),
                        SizedBox(height: 4,),
                        Text("Children", style: TextStyle(
                            fontSize: 9
                        ),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Center(
                            child: Icon(Icons.room_service,
                              color: Colors.deepPurple,),
                          ),
                        ),
                        SizedBox(height: 4,),
                        Text("service", style: TextStyle(
                            fontSize: 9
                        ),)
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              height: 310,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(bottom: 8),
              padding: EdgeInsets.only(left: 8, right: 16),
              decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.3),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(48),
                      bottomRight: Radius.circular(48)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 8,
                        spreadRadius: 3)
                  ]),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 48,
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {},
                      ),
                      Text(
                        "Search result",
                        style: TextStyle(fontSize: 24),
                      ),
                      Spacer(),
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 5,
                                  spreadRadius: 3)
                            ]),
                        child: Center(
                          child: Icon(
                            Icons.tune,
                            color: Colors.lightBlueAccent.withOpacity(0.5),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    height: 152,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 52,
                                width: 42,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 4,
                                          spreadRadius: 2)
                                    ]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Mon",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    Text(
                                      "03",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 16,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 16,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 16,
                              ),
                              Container(
                                height: 52,
                                width: 42,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 4,
                                          spreadRadius: 2)
                                    ]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Tue",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    Text(
                                      "22",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 7,
                          child: Container(
                            margin: EdgeInsets.only(left: 8, right: 8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16)),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        top: 8, left: 8, right: 8),
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent,
                                        borderRadius: BorderRadius.circular(8),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://cdn.pixabay.com/photo/2015/03/26/10/01/burj-al-arab-690768__340.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        top: 8,
                                        left: 8,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "Dubai",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text("Dukes The Palm"),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Text(
                                                  "5",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        top: 8,
                                        right: 8,
                                        child: Icon(
                                          Icons.bookmark,
                                          color: Colors.greenAccent,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.only(left: 24),
              height: 24,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Recommended tours",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Most viewed"),
                            Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Most viewed"),
                            Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Most viewed"),
                            Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: 380,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: items,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 68,
        child: BubbleBottomBar(
          opacity: 0.15,
          currentIndex: pageIndex,
          onTap: (v) {
            setState(() {
              pageIndex = v;
            });
          },
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24)),
          elevation: 8,
          hasInk: true,
          hasNotch: true,
          items: <BubbleBottomBarItem>[
            BubbleBottomBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                backgroundColor: Colors.lightBlueAccent,
                activeIcon: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                title: Text("Home")),
            BubbleBottomBarItem(
                icon: Icon(
                  Icons.shopping_basket,
                  color: Colors.black,
                ),
                backgroundColor: Colors.lightBlueAccent,
                activeIcon: Icon(
                  Icons.shopping_basket,
                  color: Colors.blue,
                ),
                title: Text("Home")),
            BubbleBottomBarItem(
                icon: Icon(
                  Icons.bookmark_border,
                  color: Colors.black,
                ),
                backgroundColor: Colors.lightBlueAccent,
                activeIcon: Icon(
                  Icons.bookmark_border,
                  color: Colors.blue,
                ),
                title: Text("Home")),
            BubbleBottomBarItem(
                icon: Icon(
                  Icons.perm_identity,
                  color: Colors.black,
                ),
                backgroundColor: Colors.lightBlueAccent,
                activeIcon: Icon(
                  Icons.perm_identity,
                  color: Colors.blue,
                ),
                title: Text("Home"))
          ],
        ),
      ),
    );
  }
}
