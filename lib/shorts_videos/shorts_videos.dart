import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Shorts_Videos_Page extends StatefulWidget {
  static const String id="Shorts_Videos_Page";

  @override
  _Shorts_Videos_PageState createState() => _Shorts_Videos_PageState();
}

class _Shorts_Videos_PageState extends State<Shorts_Videos_Page> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller=VideoPlayerController.asset('assets/videos/2.mp4')
    ..initialize().then((_) {
      _controller.play();
      _controller.setLooping(true);
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: FittedBox(
              //fit: BoxFit.fill,
              fit: BoxFit.contain,
              child: SizedBox(
                width: 250,
                height: 250,
                child: VideoPlayer(_controller,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
