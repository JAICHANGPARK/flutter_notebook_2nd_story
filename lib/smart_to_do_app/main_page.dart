import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/food_delivery_app_02/main_page.dart';
import 'package:flutter_notebook_second_story/note_utils/note_image.dart';

class Todo {
  String setTime;
  String task;
  String time;
  Color labelColor;

  Todo({this.setTime, this.task, this.time, this.labelColor});
}

List<Todo> todoItem = [
  Todo(
      setTime: "11.14 am",
      task: "Belanja sama emak",
      time: "in 3 hrs 34 mins",
      labelColor: Colors.pink),
  Todo(
      setTime: "11.14 am",
      task: "Belanja sama emak",
      time: "in 3 hrs 34 mins",
      labelColor: Colors.blue),
  Todo(
      setTime: "11.14 am",
      task: "Belanja sama emak",
      time: "in 3 hrs 34 mins",
      labelColor: Colors.green),
  Todo(
      setTime: "11.14 am",
      task: "Belanja sama emak",
      time: "in 3 hrs 34 mins",
      labelColor: Colors.yellow)
];

class SmartToDoApp extends StatelessWidget {
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

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 48),
          child: Column(
            children: <Widget>[
              Container(
                height: deviceHeight / 10,
              ),
              Container(
                height: deviceHeight / 10,
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Hello Dreamwalker",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Good morning,",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      width: 100,
                      margin: EdgeInsets.symmetric(vertical: 4),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          image: DecorationImage(
                              image: NetworkImage(
                                dreamwalkerImg,
                              ),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              bottomLeft: Radius.circular(16))),
                    )
                  ],
                ),
              ),
              Container(
                height: deviceHeight / 10,
                padding: EdgeInsets.only(right: 100),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You have some important tasks to do for today",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                ),
              ),
              Container(
                height: deviceHeight / 12,
                child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  indicatorColor: Colors.transparent,
                  controller: _tabController,
                  tabs: <Widget>[
                    Tab(
                      text: "Today's PRIORITIES".toUpperCase(),
                    ),
                    Tab(
                      text: "NOTES".toUpperCase(),
                    ),
                    Tab(
                      text: "projects".toUpperCase(),
                    ),
                    Tab(
                      text: "others".toUpperCase(),
                    )
                  ],
                ),
              ),
              Container(
                height: deviceHeight / 2,
                child: TabBarView(controller: _tabController, children: [
                  Container(
                      child: GridView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 16, top: 16, right: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.5))),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              left: 16,
                              top: 16,
                              right: 16,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    todoItem[index].setTime,
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    todoItem[index].task,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              right: 0,
                              top: 16,
                              child: Container(
                                height: 4,
                                width: 28,
                                decoration: BoxDecoration(
                                  color: todoItem[index].labelColor,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    bottomLeft: Radius.circular(16),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 8,
                              right: 8,
                              left: 16,
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    todoItem[index].time,
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.notifications_none,
                                    color: Colors.grey.withOpacity(0.5),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    itemCount: todoItem.length,
                  )),
                  Container(
                      child: GridView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(bottom: 16, top: 16, right: 8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.5))),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  left: 16,
                                  top: 16,
                                  right: 16,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        todoItem[index].setTime,
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        todoItem[index].task,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  top: 16,
                                  child: Container(
                                    height: 4,
                                    width: 28,
                                    decoration: BoxDecoration(
                                      color: todoItem[index].labelColor,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(16),
                                        bottomLeft: Radius.circular(16),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 8,
                                  right: 8,
                                  left: 16,
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        todoItem[index].time,
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.notifications_none,
                                        color: Colors.grey.withOpacity(0.5),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                        itemCount: todoItem.length,
                      )),
                  Container(
                      child: GridView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(bottom: 16, top: 16, right: 8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.5))),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  left: 16,
                                  top: 16,
                                  right: 16,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        todoItem[index].setTime,
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        todoItem[index].task,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  top: 16,
                                  child: Container(
                                    height: 4,
                                    width: 28,
                                    decoration: BoxDecoration(
                                      color: todoItem[index].labelColor,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(16),
                                        bottomLeft: Radius.circular(16),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 8,
                                  right: 8,
                                  left: 16,
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        todoItem[index].time,
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.notifications_none,
                                        color: Colors.grey.withOpacity(0.5),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                        itemCount: todoItem.length,
                      )),
                  Container(
                      child: GridView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(bottom: 16, top: 16, right: 8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.5))),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  left: 16,
                                  top: 16,
                                  right: 16,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        todoItem[index].setTime,
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        todoItem[index].task,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  top: 16,
                                  child: Container(
                                    height: 4,
                                    width: 28,
                                    decoration: BoxDecoration(
                                      color: todoItem[index].labelColor,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(16),
                                        bottomLeft: Radius.circular(16),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 8,
                                  right: 8,
                                  left: 16,
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        todoItem[index].time,
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.notifications_none,
                                        color: Colors.grey.withOpacity(0.5),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                        itemCount: todoItem.length,
                      )),
                ]),
              ),
              Container(
                height: deviceHeight/3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("THIS WEEK"),
                    Container(
                      height: deviceHeight/3 - 24,
                      child: ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index){
                        return Container(
                          margin: EdgeInsets.only(top: 8, bottom: 8),
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.grey.withOpacity(0.5))
                          ),
                        );
                      },
                      itemCount: todoItem.length,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.mic),
        onPressed: (){},
      ),
//      floatingActionButton: Align(
//        alignment: Alignment.bottomRight,
//        child: Column(
//          children: <Widget>[
//            FloatingActionButton(
//              heroTag: 'stt',
//              child: Icon(Icons.mic), onPressed: () {},
//            ),
//            FloatingActionButton(
//              heroTag: 'add',
//              child: Icon(Icons.add), onPressed: () {},
//            )
//          ],
//        ),
//      ),
    );
  }
}
















