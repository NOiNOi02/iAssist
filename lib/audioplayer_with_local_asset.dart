import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AudioPlayerWithLocalAsset extends StatefulWidget {
  const AudioPlayerWithLocalAsset({Key? key}) : super(key: key);

  @override
  _AudioPlayerWithLocalAssetState createState() =>
      _AudioPlayerWithLocalAssetState();
}

AudioPlayer audioPlayer = AudioPlayer();
PlayerState audioPlayerState = PlayerState.PAUSED;
AudioCache audioCache = AudioCache();

class _AudioPlayerWithLocalAssetState extends State<AudioPlayerWithLocalAsset> {
  String path = 'music.mp3';

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
