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
  List<Widget> _buildTopView(BuildContext context) {
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

  Widget _buildMemberView() {
    return Container(
      padding: EdgeInsets.only(left: 24, right: 24),
      height: 120,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Row(
              children: <Widget>[
                Text(
                  "Members",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                Spacer(),
                Text("Add"),
                SizedBox(
                  width: 4,
                ),
                Container(
                  height: 4,
                  width: 4,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black),
                )
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 72,
                  width: 72,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2017/08/30/12/45/girl-2696947__340.jpg"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  height: 72,
                  width: 72,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2018/01/21/14/16/woman-3096664__340.jpg"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  height: 72,
                  width: 72,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2017/11/19/07/30/girl-2961959__340.jpg"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  height: 72,
                  width: 72,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2016/05/23/23/32/human-1411499__340.jpg"),
                          fit: BoxFit.cover)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> _buildFileListItems(BuildContext context){
    return [
      Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        height: MediaQuery.of(context).size.height / 7,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    "Today",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                child: Icon(
                  Icons.insert_drive_file,
                  color: Colors.red[300],
                  size: 84,
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 12, horizontal: 4),
                child: Column(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Flutter Application",
                      style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.9),
                    ),
                    Text(
                      "12:00 pm",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "Shared by - Lucy",
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.red,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      Divider(),
      Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        height: MediaQuery.of(context).size.height / 7,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    "Yesterday",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                child: Icon(
                  Icons.insert_drive_file,
                  color: Colors.yellow[300],
                  size: 84,
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 12, horizontal: 8),
                child: Column(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Flutter Web File",
                      style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.1),
                    ),
                    Text(
                      "12:00 pm",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "Shared by - Andy",
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.orangeAccent,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      Divider(),
      Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        height: MediaQuery.of(context).size.height / 7,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    "10.03.19",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                child: Icon(
                  Icons.insert_drive_file,
                  color: Colors.green[300],
                  size: 84,
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 12, horizontal: 8),
                child: Column(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Flutter Desktop",
                      style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.1),
                    ),
                    Text(
                      "11:30 am",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "Shared by - Kortana",
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.green,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      Divider(),
      Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        height: MediaQuery.of(context).size.height / 7,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    "10.02.19",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                child: Icon(
                  Icons.insert_drive_file,
                  color: Colors.orange[300],
                  size: 84,
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 12, horizontal: 8),
                child: Column(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Flutter Embedded",
                      style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.1),
                    ),
                    Text(
                      "14:20 am",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "Shared by - Dream",
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.orangeAccent,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ];
  }

  Widget _buildFileViews(BuildContext context){

    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
      child: Container(
        height: MediaQuery.of(context).size.height / 2.1,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Text(
                    "Files",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                  Spacer(),
                  Text("Refresh"),
                  Icon(Icons.refresh),
                ],
              ),
            ),
            Expanded(
              flex: 8,
              child: ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  children: _buildFileListItems(context)
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ..._buildTopView(context),
            _buildMemberView(),
            _buildFileViews(context)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.red[400],
      ),
    );
  }
}














