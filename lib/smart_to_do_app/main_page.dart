import 'package:flutter/material.dart';
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
            ],
          ),
        ),
      ),
    );
  }
}
