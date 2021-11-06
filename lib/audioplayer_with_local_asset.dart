import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AudioPlayerWithLocalAsset extends StatefulWidget {
  const AudioPlayerWithLocalAsset({Key? key}) : super(key: key);

  @override
  _AudioPlayerWithLocalAssetState createState() =>
      _AudioPlayerWithLocalAssetState();
}

String path = 'music.mp3';
AudioPlayer audioPlayer = AudioPlayer();
PlayerState audioPlayerState = PlayerState.PLAYING;
AudioCache audioCache = AudioCache();
playMusic() async {
  audioCache = AudioCache(fixedPlayer: audioPlayer);
  await audioCache.loop(path, volume: 0.1);
}

pauseMusic() async {
  await audioPlayer.pause();
}

resumeMusic() async {
  await audioPlayer.resume();
}

class _AudioPlayerWithLocalAssetState extends State<AudioPlayerWithLocalAsset> {
  @override
  void initState() {
    super.initState();
    audioCache = AudioCache(fixedPlayer: audioPlayer);
    audioPlayer.onPlayerStateChanged.listen((PlayerState s) {
      setState(() {
        audioPlayerState = s;
      });
    });
  }

  // @override
  // void dispose() {
  //   super.dispose();
  //   audioPlayer.release();
  //   audioPlayer.dispose();
  //   audioCache.clearAll();
  // }

<<<<<<< HEAD
=======
  playMusic() async {
    audioCache = AudioCache(fixedPlayer: audioPlayer);
    await audioCache.loop(path, volume: 0.3);
  }

  pauseMusic() async {
    await audioPlayer.pause();
  }

  resumeMusic() async {
    await audioPlayer.resume();
  }

>>>>>>> 0b082c8de1a599ca78de9cf0d47a189215119f88
  @override
  Widget build(BuildContext context) {
    return Tab(
      icon: IconButton(
        iconSize: 4.h,
        onPressed: () {
          audioPlayerState == PlayerState.PLAYING ? pauseMusic() : playMusic();
        },
        icon: Icon(
          audioPlayerState == PlayerState.PLAYING
              ? Icons.music_note
              : Icons.music_off,
          color: Color(0xFF4785B4),
        ),
      ),
    );
  }
}
