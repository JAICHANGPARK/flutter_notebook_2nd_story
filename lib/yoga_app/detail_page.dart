import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/note_utils/note_image.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:video_player/video_player.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  VideoPlayerController _controller;
  Future<void> _initVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.network(
        "https://gcs-vimeo.akamaized.net/exp=1568820872~acl=%2A%2F1191266893.mp4%2A~hmac=de6073eb41a7f433cc6f411057ecddaf0846943c8dbf3470a511e005077cd911/vimeo-prod-skyfire-std-us/01/1938/12/309694396/1191266893.mp4");
    _initVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
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
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 1.5,
              child: FutureBuilder(
                future: _initVideoPlayerFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    _controller.play();
                    return AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
          ),
          Positioned(
            top: 48,
            left: 16,
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop(true);
              },
              child: Container(
                height: 38,
                width: 38,
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: Center(
                  child: Icon(Icons.keyboard_arrow_left),
                ),
              ),
            ),
          ),
          SlidingUpPanel(
            minHeight: 360,
            maxHeight: MediaQuery.of(context).size.height - 160,
            panel: Padding(
              padding: const EdgeInsets.all(24.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 28,
                      width: 72,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey[100],
                          borderRadius: BorderRadius.circular(24)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.av_timer,
                            size: 14,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "18 min",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "SUN SALUTATION",
                      style: TextStyle(
                          fontSize: 24,
                          letterSpacing: 3,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "surya namaskar",
                      style: TextStyle(color: Colors.grey, letterSpacing: 4),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "about the workout".toUpperCase(),
                      style: TextStyle(
                          letterSpacing: 3, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      kLoremIpsum,
                      style: TextStyle(color: Colors.grey, letterSpacing: 3),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 64),
                      child: Text(
                        "Surta namaskar consists of the following asanas:"
                            .toUpperCase(),
                        style: TextStyle(
                            letterSpacing: 3, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      kLoremIpsum,
                      style: TextStyle(color: Colors.grey, letterSpacing: 3),
                    ),
                  ],
                ),
              ),
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),

        ],
      ),
    );
  }
}




















