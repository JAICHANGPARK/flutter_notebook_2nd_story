import 'dart:ui';

import 'package:flutter/material.dart';

class AudioDetailPage extends StatefulWidget {
  @override
  _AudioDetailPageState createState() => _AudioDetailPageState();
}

class _AudioDetailPageState extends State<AudioDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 10,
              child: Stack(
                children: <Widget>[
                  Hero(
                    tag: "home_01",
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(36),
                        color: Colors.deepPurple,
                        image: DecorationImage(
                            image: NetworkImage(
                                "http://demo.cmssuperheroes.com/themeforest/bookjunky/wp-content/uploads/the_world.jpg"),
                            fit: BoxFit.fitHeight),),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child:Container(
                      height: 68,
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      padding: EdgeInsets.symmetric(horizontal: 38),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(36)
                      ),
                      
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[

                          Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              shape: BoxShape.circle
                            ),
                            child: Center(
                              child: Icon(Icons.replay_30),
                            ),
                          ),
                          FloatingActionButton(
                            heroTag: "play",
                            child: Icon(Icons.play_arrow,
                            color: Colors.deepPurple,),
                            backgroundColor: Colors.white, onPressed: () {},
                          ),
                          Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                shape: BoxShape.circle
                            ),
                            child: Center(
                              child: Icon(Icons.replay_30),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
        
                ],
              ),
          ),
          Expanded(
            flex: 8,
            child: ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(8),
                  child: Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                  style: TextStyle(
                    wordSpacing: 2,
                    letterSpacing: 2,
                    fontSize: 24
                  ),),
                )
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: InkWell(
              onLongPress: (){
                showModalBottomSheet(context: context, builder: (context){
                  return ReorderableListView(

                    onReorder: (int oldIndex, int newIndex) {},
                    children: <Widget>[
                      ListTile(
                       key: ObjectKey("1"),
                        title: Text("Chapter1",),
                        subtitle: Text("Art and specific categories"),

                      ),
                      ListTile(
                        key: ObjectKey("2"),
                        title: Text("Chapter2",),
                        subtitle: Text("Art and specific categories"),

                      ),
                      ListTile(
                        key: ObjectKey("3"),
                        title: Text("Chapter3",),
                        subtitle: Text("Art and specific categories"),

                      ),
                      ListTile(
                        key: ObjectKey("4"),
                        title: Text("Chapter4",),
                        subtitle: Text("Art and specific categories"),

                      ),
                      ListTile(
                        key: ObjectKey("5"),
                        title: Text("Chapter5",),
                        subtitle: Text("Art and specific categories"),

                      )
                    ],

                  );
                });
              },
              child: Container(
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(24)

                ),
                child: Row(
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}



































