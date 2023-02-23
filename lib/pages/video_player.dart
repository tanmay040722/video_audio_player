import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerPage extends StatefulWidget {
  const VideoPlayerPage

  (

  {

  Key

  ?

  key

  ,

  required
}) :
super
(
key: key);


@override
State<VideoPlayerPage> createState() => _VideoPlayerPageState();}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late VideoPlayerController controller;
  late ChewieController _chewieController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = VideoPlayerController.network(
        'https://file-examples.com/storage/fe6a5406fa63112369b75a2/2017/04/file_example_MP4_480_1_5MG.mp4');
    _chewieController = ChewieController(videoPlayerController: controller,
        aspectRatio: 16 / 9,
        autoInitialize: true,
        looping: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Video Player",
          style: TextStyle(
              fontSize: 40, color: Colors.white, fontFamily: 'LittleLordFont'),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Chewie(
        controller: _chewieController,
      )
    );
  }
}

