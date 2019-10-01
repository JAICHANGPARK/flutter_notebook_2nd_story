import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/note_utils/note_image.dart';

class ProjectManagementApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FilePage(),
    );
  }
}

class FilePage extends StatefulWidget {
  @override
  _FilePageState createState() => _FilePageState();
}

class _FilePageState extends State<FilePage> {
  List<Widget> _buildTopView(BuildContext context){
    return [
      SafeArea(
        top: true,
        left: true,
        right: true,
        child: Container(
          padding: EdgeInsets.only(left: 24, right: 24),
          height: MediaQuery.of(context).size.height / 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.chevron_left,
                color: Colors.black,
                size: 32,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 13,
                width: MediaQuery.of(context).size.height / 13,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          dreamwalkerImg,
                        ),
                        fit: BoxFit.cover)),
              )
            ],
          ),
        ),
      ),
      SizedBox(
        height: 24,
      ),
      Container(
        padding: EdgeInsets.only(left: 24, right: 24),
        height: MediaQuery.of(context).size.height / 6,
        child: Stack(
          children: <Widget>[
            Positioned(
              right: 0,
              top: 8,
              child: Icon(
                Icons.more_vert,
                color: Colors.teal,
              ),
            ),
            Positioned(
              left: 0,
              top: -10,
              child: Icon(
                Icons.folder,
                color: Colors.teal,
                size: 84,
              ),
            ),
            Positioned(
              left: 100,
              top: 8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Flutter Application",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Deadline - Oct 18, 2019",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 38,
              left: 0,
              right: 0,
              child: Container(
                height: 8,
                decoration: BoxDecoration(
                  color: Colors.teal[100],
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            Positioned(
              bottom: 38,
              left: 0,
              right: 100,
              child: Container(
                height: 8,
                decoration: BoxDecoration(
                  color: Colors.teal[800],
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            Positioned(
              bottom: 8,
              left: 0,
              child: Text(
                "On progress - 70% Done",
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      )
    ];

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ..._buildTopView(context),


          ],
        ),
      ),
    );
  }
}





















