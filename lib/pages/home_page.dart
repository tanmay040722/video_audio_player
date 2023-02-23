import 'package:flutter/material.dart';
import 'package:video_and_audio_player/pages/video_player.dart';

import 'audio_player.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Player Screen",
          style: TextStyle(
              fontSize: 40, color: Colors.white, fontFamily: 'LittleLordFont'),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                "Welcome",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                  fontFamily: "LittleLordFont",
                  fontSize: 70,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "Choose your player...",
              style: TextStyle(
                  color: Colors.black45,
                  fontSize: 30,
                  fontFamily: "LittleLordFont"),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://nextbigwhat.com/wp-content/webpc-passthru.php?src=https://nextbigwhat.com/wp-content/uploads/2021/12/music_thinkstockphotos.jpeg&nocache=1"),
                      radius: 80,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.deepPurple,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {

                        Navigator.push(context,MaterialPageRoute(builder: (context) => const VideoPlayerPage(),),);
                      },
                      child: const Text(
                        'Video Player',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://i.blogs.es/46b0d6/alexander-shatov-qt7s2quahji-unsplash/1366_2000.jpeg"),
                      radius: 80,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.deepPurple,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => const AudioPlayerPage(),),);

                      },
                      child: const Text(
                        'Audio Player',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            Image.network( width: double.maxFinite, height: 150,
                'https://i.pinimg.com/originals/37/b8/11/37b8112791f2529ffe4882412b541c94.gif'),
          ],
        ),
      ),
    );
  }
}
