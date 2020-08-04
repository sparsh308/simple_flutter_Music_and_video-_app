import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

AudioPlayer audioPlayer = new AudioPlayer();
var ap = new AudioCache(fixedPlayer: audioPlayer);

playonline() async {
  ap.clearCache();
  await audioPlayer.play(
      'https://raw.githubusercontent.com/sparsh308/sample_musics/master/online_music2.mp3');
}

playlocal() {
  ap.clearCache();
  ap.play('note.wav');
}

pause() {
  audioPlayer.pause();
}

stop() {
  audioPlayer.stop();
}

class offlineScreen extends StatefulWidget {
  @override
  offlineScreenState createState() {
    return new offlineScreenState();
  }
}

class offlineScreenState extends State<offlineScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://i.ytimg.com/vi/r6zIGXun57U/maxresdefault.jpg'),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.pink, width: 5),
                            borderRadius: BorderRadius.circular(500),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://www.xda-developers.com/files/2020/06/apple-music.jpg'),
                                fit: BoxFit.cover)),
                        width: 50,
                        height: 50,
                        //color: Colors.pink,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.pause_circle_filled),
                      onPressed: pause,
                      iconSize: 35,
                    ),
                    IconButton(
                      icon: Icon(Icons.play_circle_filled),
                      focusColor: Colors.black,
                      onPressed: playlocal,
                      iconSize: 35,
                    ),
                    IconButton(
                      icon: Icon(Icons.stop),
                      onPressed: stop,
                      iconSize: 35,
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'music alan walker - legends never die.mp3',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
