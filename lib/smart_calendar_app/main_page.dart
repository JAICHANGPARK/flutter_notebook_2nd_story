import 'package:flutter/material.dart';

class SmartCalendarApp extends StatelessWidget {
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

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SafeArea(
            top: true,
            right: true,
            left: true,
            child: Container(
              height: 64,
              padding: EdgeInsets.only(left: 24, right: 24, top: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "19:30 IST",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        "(GMT +1:30)",
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.calendar_today),
                      SizedBox(
                        width: 16,
                      ),
                      Icon(Icons.more_vert),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.add_location,
                        size: 12,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "New Delhi, India",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 16),
            height: MediaQuery.of(context).size.height / 3.8,
            decoration: BoxDecoration(
                color: Color(0xff1849EC),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 5,
                      spreadRadius: 2)
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 10,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 24, bottom: 0, right: 16, left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "CHANGE IN TIMEZONE DETECTED!",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2),
                        ),
                        Spacer(),
                        Row(
                          children: <Widget>[
                            Text(
                              "09:00 CST",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "(GMT -6:30)",
                              style: TextStyle(
                                  color: Colors.grey[100], fontSize: 10),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              size: 12,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Texas, United States",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            )
                          ],
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white.withOpacity(0.3),
                  height: 0,
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            "Ignore",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                              )),
                          child: Center(
                            child: Text(
                              "Update Timezone",
                              style: TextStyle(
                                color: Color(0xff1849EC),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 28,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "Mon,",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      " 27th Oct",
                      style: TextStyle(fontSize: 32),
                    )
                  ],
                ),
                SizedBox(
                  height: 9,
                ),
                Text(
                  "3 Events",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          ListView(
            shrinkWrap: true,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 24),
                height: 200,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "11:00",
                            style: TextStyle(color: Colors.black54),
                          ),
                          Container(
                            height: 2,
                            width: 18,
                            decoration: BoxDecoration(color: Colors.grey[300]),
                          ),
                          Container(
                            height: 2,
                            width: 32,
                            decoration: BoxDecoration(color: Colors.grey[300]),
                          ),
                          Container(
                            height: 2,
                            width: 18,
                            decoration: BoxDecoration(color: Colors.grey[300]),
                          ),
                          Text(
                            "12:00",
                            style: TextStyle(color: Colors.black54),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child: Container(
                        padding: EdgeInsets.only(left: 24, top: 32, bottom: 0),
                        margin: EdgeInsets.only(top: 7),
                        decoration: BoxDecoration(
                            color: Colors.blue[100],
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12))),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Meeting with Jon",style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),),
                            SizedBox(
                              height: 8,
                            ),
                            Text("13:00 - 14:00",style: TextStyle(
                              fontSize: 13
                            ),),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.add_location,
                                  color: Colors.grey,
                                  size: 12,
                                ),
                                SizedBox(width: 8,),
                                Text("Texas, United States", style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12
                                ),),
                              ],
                            ),
                            SizedBox(
                              height: 24,
                            ),
                           Container(
                             height: 38,
                             width: 80,
                             child: Stack(
                               children: <Widget>[
                                 Positioned(
                                   left: 24,
                                   bottom: 0,
                                   top: 0,
                                   child: CircleAvatar(),
                                 ),
                                 CircleAvatar(
                                   backgroundColor: Colors.red,
                                 ),
                               ],
                             ),
                           )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
