import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
            panel: Stack(
              children: <Widget>[
                Positioned(
                  right: 24,
                  top: -48,
                 child: Container(
                   height: 64,
                   width: 64,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     color: Color(0xff003847),
                   ),
                   child: Center(
                     child: Icon(Icons.play_arrow, color: Colors.white,),
                   ),
                 ),
                )
              ],
            ),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          )
        ],
      ),
    );
  }
}













