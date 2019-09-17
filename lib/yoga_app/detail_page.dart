import 'package:flutter/material.dart';
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
    _controller = VideoPlayerController.network("https://gcs-vimeo.akamaized.net/exp=1568736803~acl=%2A%2F403559628.mp4%2A~hmac=19740d88c1c9cdec0db81c86a7074aeceb04372ae62cef340989a4b051ea8bc6/vimeo-prod-skyfire-std-us/01/2243/5/136216234/403559628.mp4");
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
                builder: (context, snapshot){
                  if(snapshot.connectionState == ConnectionState.done){
                    _controller.play();
                    return AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    );
                  }else{
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
              onTap: (){
                Navigator.of(context).pop(true);
              },
              child: Container(
                height: 38,
                width: 38,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle
                ),
                child: Center(
                  child: Icon(Icons.keyboard_arrow_left),
                ),
              ),
            ),
          )
        ],
      ),


    );

  }
}


















