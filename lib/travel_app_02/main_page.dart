import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/note_utils/note_image.dart';

class TravelApp02 extends StatelessWidget {
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
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 32,
              ),
              SafeArea(
                top: true,
                left: true,
                right: true,
                child: Text("Collections", style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold
                ),),
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                height: 52,
                padding: EdgeInsets.only(left: 16),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Center(
                  child: TextField(
                    controller: _textEditingController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.search),
                      hintText: "Search place or list..."
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("My List", style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),),
                    Spacer(),
                    Text("Show all", style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 320,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 220,
                      margin: EdgeInsets.only(right: 16),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 4,
                            top: 0,
                            right: 0,
                            bottom: 12,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 3,
                                    spreadRadius: 1
                                  )
                                ]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 24, right: 24,
                                top: 24,
                                bottom: 24
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("Private list", style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700
                                            ),),
                                            Text("by Sean Collins", style: TextStyle(
                                              color: Colors.grey,
                                            ),),
                                          ],
                                        ),
                                        Icon(Icons.more_horiz, color: Colors.grey,
                                        size: 28,),
                                      ],
                                    ),
                                    Container(
                                      height: 90,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(8),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2019/04/04/17/58/hong-kong-4103334_960_720.jpg"
                                          ),
                                          fit: BoxFit.cover
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(0.2),
                                            blurRadius: 10,
                                            spreadRadius: 1,
                                            offset: Offset(0, 5)
                                          )
                                        ]
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text('Shanghai in China',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                        ),),
                                        Text("17 places",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13
                                        ),)
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          height: 36,
                                          width: 36,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.circular(8),
                                            image: DecorationImage(
                                              image: NetworkImage(dreamwalkerImg),
                                              fit: BoxFit.cover
                                            )
                                          ),
                                        ),
                                        Container(
                                          height: 36,
                                          width: 36,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.circular(8),
                                              image: DecorationImage(
                                                  image: NetworkImage(dreamwalkerImg),
                                                  fit: BoxFit.cover
                                              )
                                          ),
                                        ),
                                        Container(
                                          height: 36,
                                          width: 36,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.circular(8),
                                              image: DecorationImage(
                                                  image: NetworkImage(dreamwalkerImg),
                                                  fit: BoxFit.cover
                                              )
                                          ),
                                        ),
                                        Container(
                                          height: 36,
                                          width: 36,
                                          decoration: BoxDecoration(
                                              color: Colors.orange,
                                              borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: Center(
                                            child: Text("+8", style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                            ),),
                                          ),
                                        )
                                      ],
                                    )

                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 24,
                            child: Container(
                              height: 32,
                              width: 4,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(16)
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 220,
                      margin: EdgeInsets.only(right: 16),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 4,
                            top: 0,
                            right: 0,
                            bottom: 12,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        blurRadius: 3,
                                        spreadRadius: 1
                                    )
                                  ]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 24, right: 24,
                                    top: 24,
                                    bottom: 24
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("Private list", style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w700
                                            ),),
                                            Text("by Sean Collins", style: TextStyle(
                                              color: Colors.grey,
                                            ),),
                                          ],
                                        ),
                                        Icon(Icons.more_horiz, color: Colors.grey,
                                          size: 28,),
                                      ],
                                    ),
                                    Container(
                                      height: 90,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.circular(8),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2013/11/25/09/52/japan-217882_960_720.jpg"
                                              ),
                                              fit: BoxFit.cover
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black.withOpacity(0.2),
                                                blurRadius: 10,
                                                spreadRadius: 1,
                                                offset: Offset(0, 5)
                                            )
                                          ]
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text('Tokyo in Japan',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18
                                          ),),
                                        Text("24 places",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13
                                          ),)
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          height: 36,
                                          width: 36,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.circular(8),
                                              image: DecorationImage(
                                                  image: NetworkImage(dreamwalkerImg),
                                                  fit: BoxFit.cover
                                              )
                                          ),
                                        ),
                                        Container(
                                          height: 36,
                                          width: 36,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.circular(8),
                                              image: DecorationImage(
                                                  image: NetworkImage(dreamwalkerImg),
                                                  fit: BoxFit.cover
                                              )
                                          ),
                                        ),
                                        Container(
                                          height: 36,
                                          width: 36,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.circular(8),
                                              image: DecorationImage(
                                                  image: NetworkImage(dreamwalkerImg),
                                                  fit: BoxFit.cover
                                              )
                                          ),
                                        ),
                                        Container(
                                          height: 36,
                                          width: 36,
                                          decoration: BoxDecoration(
                                            color: Colors.orange,
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: Center(
                                            child: Text("+8", style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold
                                            ),),
                                          ),
                                        )
                                      ],
                                    )

                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 24,
                            child: Container(
                              height: 32,
                              width: 4,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(16)
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 220,
                      margin: EdgeInsets.only(right: 16),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 4,
                            top: 0,
                            right: 0,
                            bottom: 12,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        blurRadius: 3,
                                        spreadRadius: 1
                                    )
                                  ]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 24, right: 24,
                                    top: 24,
                                    bottom: 24
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("Private list", style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w700
                                            ),),
                                            Text("by Sean Collins", style: TextStyle(
                                              color: Colors.grey,
                                            ),),
                                          ],
                                        ),
                                        Icon(Icons.more_horiz, color: Colors.grey,
                                          size: 28,),
                                      ],
                                    ),
                                    Container(
                                      height: 90,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.circular(8),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2013/11/25/09/52/japan-217882_960_720.jpg"
                                              ),
                                              fit: BoxFit.cover
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black.withOpacity(0.2),
                                                blurRadius: 10,
                                                spreadRadius: 1,
                                                offset: Offset(0, 5)
                                            )
                                          ]
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text('Tokyo in Japan',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18
                                          ),),
                                        Text("24 places",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13
                                          ),)
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          height: 36,
                                          width: 36,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.circular(8),
                                              image: DecorationImage(
                                                  image: NetworkImage(dreamwalkerImg),
                                                  fit: BoxFit.cover
                                              )
                                          ),
                                        ),
                                        Container(
                                          height: 36,
                                          width: 36,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.circular(8),
                                              image: DecorationImage(
                                                  image: NetworkImage(dreamwalkerImg),
                                                  fit: BoxFit.cover
                                              )
                                          ),
                                        ),
                                        Container(
                                          height: 36,
                                          width: 36,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.circular(8),
                                              image: DecorationImage(
                                                  image: NetworkImage(dreamwalkerImg),
                                                  fit: BoxFit.cover
                                              )
                                          ),
                                        ),
                                        Container(
                                          height: 36,
                                          width: 36,
                                          decoration: BoxDecoration(
                                            color: Colors.orange,
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: Center(
                                            child: Text("+8", style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold
                                            ),),
                                          ),
                                        )
                                      ],
                                    )

                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 24,
                            child: Container(
                              height: 32,
                              width: 4,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(16)
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



























