import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AudioPlayerPage extends StatefulWidget {
  const AudioPlayerPage({Key? key}) : super(key: key);

  @override
  State<AudioPlayerPage> createState() => _AudioPlayerState();
}

class _AudioPlayerState extends State<AudioPlayerPage> {
   final audioPlayer =  AudioPlayer();

  Duration duration= const Duration();
  Duration position = const Duration();
  bool playing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Audio Player",
          style: TextStyle(
              fontSize: 40, color: Colors.white, fontFamily: 'LittleLordFont'),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
                'https://images-na.ssl-images-amazon.com/images/I/51a1NKExrxL.png', height: 200,width: 200,),
            slider(),
            InkWell(
              onTap:() {
                getAudio();
              },
              child: Icon(playing == false
                  ? Icons.play_circle_fill_outlined
                  : Icons.pause_circle_filled_outlined,
              size: 100,
              color: Colors.blue,),
            ),
          ],
        ),
      ),
    );
  }

  Widget slider() {
    return Slider.adaptive(
        value: position.inSeconds.toDouble(),
        max: duration.inSeconds.toDouble(),
        onChanged: (double value) {
          setState(() {
            audioPlayer.seek(Duration(seconds: value.toInt()));
          });
        });
  }

 getAudio() async {
   var audio = "https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3";
   if (playing) {
     await audioPlayer.pause();
     setState((){playing=false;});
   } else {
     await audioPlayer.play(UrlSource(audio));
     setState((){playing=true;});

   }
   audioPlayer.onDurationChanged.listen((Duration dd) {
     setState((){duration=dd;});

   });
   audioPlayer.onPositionChanged.listen((Duration dd) {
     setState((){position=dd;});
   });
}
  }

