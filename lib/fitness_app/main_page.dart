import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/note_utils/note_image.dart';


class FitnessApp extends StatelessWidget {
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
      backgroundColor: Color(0xfff3f3f3),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Hi Dreamwalker",
                       style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 24
                       ),),
                      CircleAvatar(
                        backgroundImage: NetworkImage(dreamwalkerImg),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Text("What workout would you like to do today?",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w300
                  ),),
                ),
                SizedBox(height: 16,),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        iconSize: 48,
                        icon: Icon(Icons.timer),
                        onPressed: (){},
                      ),
                      IconButton(
                        iconSize: 48,
                        icon: Icon(Icons.directions_bike),
                        onPressed: (){},
                        color: Colors.grey,
                      ),
                      IconButton(
                        iconSize: 48,
                        icon: Icon(Icons.directions_run),
                        color: Colors.grey,
                        onPressed: (){},
                      ),
                      IconButton(
                        iconSize: 48,
                        icon: Icon(Icons.fitness_center),
                        color: Colors.grey,
                        onPressed: (){},
                      ),
                      IconButton(
                        iconSize: 48,
                        icon: Icon(Icons.transfer_within_a_station),
                        color: Colors.grey,
                        onPressed: (){},
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 48,
                  margin: EdgeInsets.only(left: 16, right: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4)
                  ),
                  
                ),
                SizedBox(
                  height: 36,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  topLeft: Radius.circular(16)
                )
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedIconTheme: IconThemeData(
            color: Colors.grey
          ),
          selectedIconTheme: IconThemeData(
            color: Colors.black
          ),
          items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home,
          ),
          title: Text(""),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home,
          ),
          title: Text(""),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home,
          ),
          title: Text(""),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home,
          ),
          title: Text(""),
        ),
      ]),
    );
  }
}




































