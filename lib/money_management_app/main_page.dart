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
              width: MediaQuery.of(context).size.width,
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
              height: 120,
              margin: EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.blueAccent

              ),
            )
          ],
        ),
      ),
    );
  }
}













