import 'package:flutter/material.dart';

class TravelAround extends StatelessWidget {
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
      body: Stack(
        children: <Widget>[],
      ),
      bottomNavigationBar: _buildBottomWidget(context),
    );
  }

  Widget _buildBottomWidget(BuildContext context) {
    return BottomAppBar(
      elevation: 16,
      child: Container(
        height: 68,
        padding: EdgeInsets.only(left: 24, right: 24),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 3,
                  width: 48,
                  decoration: BoxDecoration(color: Colors.blueAccent),
                ),
                Icon(
                  Icons.location_on,
                  color: Colors.blue,
                ),
                Text(
                  "Location",
                  style: TextStyle(color: Colors.blue),
                ),
                SizedBox(
                  height: 4,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 3,
                  width: 48,
                  decoration: BoxDecoration(color: Colors.transparent),
                ),
                Icon(
                  Icons.open_in_browser,
                  color: Colors.grey,
                ),
                Text(
                  "Explorer",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(
                  height: 4,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 3,
                  width: 48,
                  decoration: BoxDecoration(color: Colors.transparent),
                ),
                Icon(
                  Icons.calendar_today,
                  color: Colors.grey,
                ),
                Text(
                  "Plane",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(
                  height: 4,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 3,
                  width: 48,
                  decoration: BoxDecoration(color: Colors.transparent),
                ),
                Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                ),
                Text(
                  "Favorite",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(
                  height: 4,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 3,
                  width: 48,
                  decoration: BoxDecoration(color: Colors.transparent),
                ),
                Icon(
                  Icons.person_outline,
                  color: Colors.grey,
                ),
                Text(
                  "Explorer",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(
                  height: 4,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
