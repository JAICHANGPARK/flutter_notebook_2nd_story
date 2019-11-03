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
            margin: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
            height: MediaQuery.of(context).size.height / 3.5,
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
              children: <Widget>[
                Expanded(
                  flex: 10,
                  child: Column(
                    children: <Widget>[
                      Text("CHANGE IN TIMEZONE DETECTED!"),
                      Spacer(),
                      Row(
                        children: <Widget>[
                          Text("09:00 CST"),
                          Text("(GMT -6:30")
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            size: 12,
                            color: Colors.white,
                          ),
                          Text(
                            "Texas, United States",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
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
