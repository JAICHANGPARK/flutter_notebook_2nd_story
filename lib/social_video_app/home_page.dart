import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/note_utils/note_image.dart';
import 'package:video_player/video_player.dart';
class SocialVideoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;
  @override
  void initState() {
    // TODO: implement initState

    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    )..addListener((){

    });
    _initializeVideoPlayerFuture = _controller.initialize().then((_){
      _controller.play();
    });
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(),
            height: 180,
            child: Row(

              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: Icon(Icons.menu),
                      iconSize: 38,
                      color: Colors.blue,
                      onPressed: () {}),
                ),
                Expanded(
                  flex: 8,
                    child: Container(
                      padding: EdgeInsets.only(top: 72),
                      color: Color(0xfff6f5fa),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("My Favourites",style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                          ),),
                          SizedBox(height: 24,),
                          Container(
                            height: 32,
                            decoration: BoxDecoration(

                            ),
                            child: Center(
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    left: 0,
                                    right: 0,
                                    top: 16,
                                    child: Container(
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 9,
                                    child: Container(
                                      height: 16,
                                      width: 16,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Colors.blue,
                                          width: 4
                                        )
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 24,
                                    top: 9,
                                    child: Container(
                                      height: 16,
                                      width: 16,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border: Border.all(
                                              color: Colors.indigo,
                                              width: 4
                                          )
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 48,
                                    top: 14,
                                    child: Container(
                                      height: 5,
                                      width: 160,
                                      decoration: BoxDecoration(
                                        color: Colors.lightBlue,
                                        borderRadius: BorderRadius.circular(8)
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 24,
                                    top: 9,
                                    child: Container(
                                      height: 16,
                                      width: 16,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border: Border.all(
                                              color: Colors.indigo,
                                              width: 4
                                          )
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 180,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                Card(buttonColor: Colors.indigo,),
                Card(buttonColor: Colors.lightBlueAccent,),
                Card(buttonColor: Colors.indigo,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
class Card extends StatelessWidget {
  final Color buttonColor;
  Card({@required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:  (MediaQuery.of(context).size.height - 180) / 1.8,
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 90,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xfff6f5fa),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("246", style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18
                          ),),
                          Text("likes",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12
                            ),)
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 84,
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      child: Center(
                        child: Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            shape: BoxShape.circle
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: CircleAvatar(
                              radius: 16,
                              backgroundImage: NetworkImage(dreamwalkerImg),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 8,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 8,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(image:
                          NetworkImage("https://cdn.pixabay.com/photo/2018/06/13/18/20/wave-3473335_960_720.jpg"),
                          fit: BoxFit.cover)
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: Color(0xfff6f5fa),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 24),
                              child: Row(
                                children: <Widget>[
                                  Text("The coral beaches of Australia",
                                  style: TextStyle(
                                    fontSize: 14
                                  ),),
                                  Spacer(),
                                  IconButton(
                                    padding: EdgeInsets.zero,
                                    iconSize: 18,
                                    icon: Icon(Icons.more_vert,
                                    color: Colors.grey,),
                                    onPressed: (){},
                                  )
                                ],
                              ),
                            ),
                            Text("Dreamwalker 77K views",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14
                            ),)
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
          Positioned(
            left: 46,
            top: 124,
            child: Container(
              height: 68,
              width: 68,
              decoration: BoxDecoration(
                color: buttonColor,
                border: Border.all(
                  color: Colors.white,
                  width: 5
                )
              ),
              child: Center(
                child: Icon(Icons.play_arrow,
                color: Colors.white,
                size: 32,),
              ),
            ),
          )
        ],
      ),
    );
  }
}





















