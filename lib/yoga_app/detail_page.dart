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
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold();

  }
}
