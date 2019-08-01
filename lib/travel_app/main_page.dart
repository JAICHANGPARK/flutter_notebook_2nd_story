import 'package:flutter/material.dart';

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
                  bottomRight: Radius.circular(48)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    spreadRadius: 3
                  )
                ]
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 48,
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios), onPressed: () {},
                      ),
                      Text("Search result", style: TextStyle(
                        fontSize: 24
                      ),),
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
                              spreadRadius: 3
                            )
                          ]
                        ),
                        child: Center(
                          child: Icon(Icons.tune,
                          color: Colors.lightBlueAccent.withOpacity(0.5),),
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
                                          spreadRadius: 2
                                      )
                                    ]
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("Mon",style: TextStyle(
                                      fontSize: 10
                                    ),),
                                    Text("03", style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                    ),),
                                  ],
                                ),
                              ),

                              Icon(Icons.keyboard_arrow_down,size: 16,),
                              Icon(Icons.keyboard_arrow_down,size: 16,),
                              Icon(Icons.keyboard_arrow_down,size: 16,),

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
                                          spreadRadius: 2
                                      )
                                    ]
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("Tue",style: TextStyle(
                                        fontSize: 10
                                    ),),
                                    Text("22", style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18
                                    ),),
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
                              borderRadius: BorderRadius.circular(16)
                            ),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 8, left: 8, right: 8),
                                    decoration: BoxDecoration(
                                      color: Colors.redAccent,
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(image:
                                      NetworkImage("https://cdn.pixabay.com/photo/2015/03/26/10/01/burj-al-arab-690768__340.jpg"),
                                      fit: BoxFit.cover)
                                    ),
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
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("Dubai",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold
                                            ),),
                                            Row(children: <Widget>[
                                              Text("Dukes The Palm"),
                                              SizedBox(width: 8,),
                                              Text("5",style: TextStyle(
                                                fontWeight: FontWeight.bold
                                              ),),
                                              Icon(Icons.star,color: Colors.yellow,)
                                            ],)
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        top: 8,
                                        right: 8,
                                        child: Icon(Icons.bookmark,
                                        color: Colors.greenAccent,),
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


























