import 'package:flutter/material.dart';

class MeetingRoomBookingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookingPage(),
    );
  }
}

class BookingPage extends StatefulWidget {
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffbede7),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SafeArea(
            left: true,
            top: true,
            child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.indigo,
                ),
                onPressed: () {}),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "Buildings",
              style: TextStyle(
//              color: Color(0xff3c4b5b),
                color: Colors.indigo,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
