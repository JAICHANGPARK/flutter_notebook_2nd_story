import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/note_utils/note_image.dart';

class MoneyManagementApp extends StatelessWidget {
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
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SafeArea(
              top: true,
              left: true,
              child: SizedBox(
                height: 48,
              ),
            ),
            Container(
              height: 80,
              padding: EdgeInsets.only(left: 16, right: 16),
              width: deviceWidth,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Welcome back,", style: TextStyle(color:
                      Colors.grey,
                      ),),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Dreamwalker",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold,
                        fontSize: 20),
                      )
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(color: Colors.blue,
                    image: DecorationImage(
                      image: NetworkImage(dreamwalkerImg)
                    )),
                  )
                ],
              ),
            ),
            Container(
              height: 100,
              margin: EdgeInsets.fromLTRB(16,8,16,8),
              width: deviceWidth,
              decoration: BoxDecoration(
                  color: Colors.blueAccent
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Account balance", style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                  ),),
                  SizedBox(height: 8,),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "\$256.51",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold
                        )),
                        TextSpan(text: "USD")
                      ]
                    )
                  )
                ],
              ),
            ),
            Container(
              height: 128,
              width: deviceWidth,
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Send Funds"),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: deviceWidth/6,
                        height:deviceWidth/6 ,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.amber,
                          image: DecorationImage(
                            image: NetworkImage(dreamwalkerImg)
                          )
                        ),
                      ),
                      Container(
                        width: deviceWidth/6,
                        height:deviceWidth/6 ,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.amber,
                            image: DecorationImage(
                                image: NetworkImage(dreamwalkerImg)
                            )
                        ),
                      ),
                      Container(
                        width: deviceWidth/6,
                        height:deviceWidth/6 ,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.amber,
                            image: DecorationImage(
                                image: NetworkImage(dreamwalkerImg)
                            )
                        ),
                      ),
                      Container(
                        width: deviceWidth/6,
                        height:deviceWidth/6 ,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.amber,
                            image: DecorationImage(
                                image: NetworkImage(dreamwalkerImg)
                            )
                        ),
                      ),
                      Container(
                        width: deviceWidth/6,
                        height:deviceWidth/6 ,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue.withOpacity(0.5)
                        ),
                        child: Center(
                          child: Icon(Icons.add, color: Colors.blueAccent,
                          size: 38,),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 16, top: 8, right: 16),
              height: 120,
              width: deviceWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Weekly Stats"),
                  SizedBox(height: 8,),
                  Container(
                    height: 80,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(right: 8, top: 8, bottom: 8),
                            padding: EdgeInsets.only(left: 16),
                            decoration: BoxDecoration(
                              color: Colors.greenAccent[100]
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Income", style: TextStyle(
                                  fontSize: 16
                                ),),
                                Text("+\$762.25",
                                  style: TextStyle(
                                      fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green
                                  ),)
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(left: 8, top: 8, bottom: 8),
                            padding: EdgeInsets.only(left: 16),
                            decoration: BoxDecoration(
                              color: Colors.red[100]
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Expenses", style: TextStyle(
                                    fontSize: 16
                                ),),
                                Text("-\$531.51",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red
                                  ),)
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













