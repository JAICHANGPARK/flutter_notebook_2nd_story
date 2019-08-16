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
            SizedBox(height: 16,),
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                height: 54,
                padding: EdgeInsets.only(left: 8, ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 8,
                      child: Container(
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search,
                            color: Colors.black,),
                            hintText: "Find events",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                            border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: IconButton(icon:
                          Icon(Icons.notifications_none), onPressed: (){}),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Featured near you",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),),
                  SizedBox(height: 16,),
                  Container(

                    height: 280,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 0,
                          child: Container(
                            height: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.red,
                              image: DecorationImage(image:
                              NetworkImage("https://cdn.pixabay.com/photo/2016/11/29/06/17/audience-1867754_960_720.jpg"),
                              fit: BoxFit.cover)
                            ),
                          ),
                        ),
                        Positioned(
                          right: 16,
                          top: 164,
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.5),
                                      blurRadius: 3,
                                      spreadRadius: 1
                                    )
                                  ]
                                ),
                                child: Center(
                                  child: Icon(Icons.favorite_border, size: 18,),
                                ),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Container(
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.5),
                                          blurRadius: 3,
                                          spreadRadius: 1
                                      )
                                    ]
                                ),
                                child: Center(
                                  child:Icon(Icons.share, size: 18,),
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 38,
                          left: 16,
                          right: 100,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("AGO", style: TextStyle(
                                    color: Colors.red,
                                  ),),
                                  Text("03", style: TextStyle(
                                    fontSize: 18
                                  ),)
                                ],
                              ),
                              SizedBox(width: 16,),
                              Text("Arthur McCallen\nJazz Night",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                              ),),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

















