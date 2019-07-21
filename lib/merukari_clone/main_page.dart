import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:camera/camera.dart';
import 'package:flutter_notebook_second_story/merukari_clone/model/recommand_data.dart';
import 'package:path_provider/path_provider.dart';

class MerukariClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme
        .of(context)
        .platform == TargetPlatform.android
        ? MaterialApp(
      home: HomePage(),
    )
        : CupertinoApp(
      home: CupertinoHomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

List<CameraDescription> cameras;

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TextEditingController _textEditingController = TextEditingController();
  TabController _tabController;
  CameraController _cameraController;

  void getCameras() async {
    cameras = await availableCameras();
    _cameraController = CameraController(cameras[0], ResolutionPreset.medium);
    _cameraController.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 1);
    getCameras();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 24,
            ),
            Container(
              height: 120,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 12,
                          child: Container(
                            margin: EdgeInsets.all(8),
//                          padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32),
                                color: Colors.grey.withOpacity(0.2)),
                            child: TextField(
                              controller: _textEditingController,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                hintText: "何をお探しですか？",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: IconButton(
                            icon: Icon(Icons.check),
                            onPressed: () {},
                            iconSize: 32,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBar(
                        indicatorColor: Colors.redAccent,
                        unselectedLabelColor: Colors.grey,
                        labelColor: Colors.redAccent,
                        controller: _tabController,
                        tabs: [
                          Tab(
                            text: "ストア",
                          ),
                          Tab(
                            text: "おすすめ",
                          ),
                          Tab(
                            text: "ライフ",
                          )
                        ]),
                  ),
                  Container(
                    height: 2,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          blurRadius: 1,
                          spreadRadius: 1,
                          offset: Offset(0, 2)
                        )
                      ]

                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height - 210,
              child: TabBarView(
                  controller: _tabController, children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 4,
                        crossAxisSpacing: 4,
                        crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(color: Colors.blue),
                      );
                    },
                    itemCount: osusumeList.length,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 4,
                        crossAxisSpacing: 4,
                        crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return
                        osusumeList[index].isSoldOut ?
                        Container(
                        decoration: BoxDecoration(color: Colors.redAccent,
                            image: DecorationImage(image:
                            NetworkImage(osusumeList[index].imgPath),
                                fit: BoxFit.cover)),
                        child: Stack(
                          children: <Widget>[

                            Positioned(
                              child: Container(
                                height: 48,
                                width: 48,
                                child: CustomPaint(
                                  painter: MyPainter(),
                                  child: Container(
                                    decoration: BoxDecoration(
                                    ),
                                    child: Center(
                                      child: Transform.translate(
                                        offset: Offset(-6, -6),
                                        child: Transform.rotate(
                                          angle: -0.8,
                                          child: Text("SOLD",style: TextStyle(
                                            color: Colors.white
                                          ),),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              bottom: 8,
                              child: Container(
                                width: 52,
                                height: 32,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(16),
                                      bottomRight: Radius.circular(16),
                                    )
                                ),
                                child: Center(
                                  child: Text(osusumeList[index].price,
                                    style: TextStyle(
                                        color: Colors.white
                                    ),),
                                ),
                              ),
                            )
                          ],
                        ),

                      ):  Container(
                          decoration: BoxDecoration(color: Colors.redAccent,
                              image: DecorationImage(image:
                              NetworkImage(osusumeList[index].imgPath),
                                  fit: BoxFit.cover)),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                left: 0,
                                bottom: 8,
                                child: Container(
                                  width: 52,
                                  height: 32,
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.5),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(16),
                                        bottomRight: Radius.circular(16),
                                      )
                                  ),
                                  child: Center(
                                    child: Text(osusumeList[index].price,
                                      style: TextStyle(
                                          color: Colors.white
                                      ),),
                                  ),
                                ),
                              )
                            ],
                          ),

                        );
                    },
                    itemCount: osusumeList.length,
                  ),
                ),
                Container()
              ]),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme: IconThemeData(color: Colors.black),
          selectedLabelStyle: TextStyle(
            color: Colors.black,
          ),
          unselectedLabelStyle: TextStyle(color: Colors.black),
          currentIndex: 0,
          unselectedIconTheme: IconThemeData(color: Colors.black),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                title: Text("ホーム")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications_none,
                ),
                title: Text("お知らせ")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.monetization_on,
                ),
                title: Text("メルペイ")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                ),
                title: Text("マイページ"))
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Directory appDocDir = await getApplicationDocumentsDirectory();
          _cameraController.takePicture(appDocDir.toString());
        },
        backgroundColor: Colors.redAccent,
        child: Icon(
          Icons.camera_alt,
          color: Colors.white,
        ),
      ),
    );
  }
}


class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    var paint = Paint()
      ..color = Colors.redAccent
      ..strokeWidth = 2;

    canvas.drawLine(Offset(0, 0), Offset(0, size.height), paint);
    canvas.drawLine(Offset(0, size.height), Offset(size.width, 0), paint);
    canvas.drawLine( Offset(size.width, 0), Offset(0, 0), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}


class CupertinoHomePage extends StatefulWidget {
  @override
  _CupertinoHomePageState createState() => _CupertinoHomePageState();
}

class _CupertinoHomePageState extends State<CupertinoHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
