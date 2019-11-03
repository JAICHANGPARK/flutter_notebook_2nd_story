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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("19:30 IST"),
                      Text("(GMT +1:30)"),
                      Spacer(),
                      Icon(Icons.calendar_today),
                      Icon(Icons.more_vert),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.add_location,
                        size: 12,
                      ),
                      Text("New Delhi, India")
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
                    padding: const EdgeInsets.only(top: 24, bottom: 0, right: 16, left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("CHANGE IN TIMEZONE DETECTED!",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2
                        ),),
                        Spacer(),
                        Row(
                          children: <Widget>[
                            Text("09:00 CST",style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w800
                            ),),
                            SizedBox(width: 4,),
                            Text("(GMT -6:30)", style: TextStyle(
                              color: Colors.grey[100],
                              fontSize: 10
                            ),)
                          ],
                        ),
                        SizedBox(height: 8,),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              size: 12,
                              color: Colors.white,
                            ),
                            SizedBox(width: 4,),
                            Text(
                              "Texas, United States",
                              style: TextStyle(color: Colors.grey,
                              fontSize: 12),
                            )
                          ],
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
                Divider(color: Colors.white.withOpacity(0.3),
                height: 0,),
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
                            )
                          ),
                          child: Center(
                            child: Text("Update Timezone", style: TextStyle(
                              color: Color(0xff1849EC),
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
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
    ));
  }
}













