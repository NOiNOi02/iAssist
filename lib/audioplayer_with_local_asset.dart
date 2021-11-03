import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AudioPlayerWithLocalAsset extends StatefulWidget {
  const AudioPlayerWithLocalAsset({ Key? key }) : super(key: key);

  @override
  _AudioPlayerWithLocalAssetState createState() => _AudioPlayerWithLocalAssetState();
}

class _AudioPlayerWithLocalAssetState extends State<AudioPlayerWithLocalAsset> {
  
  AudioPlayer audioPlayer = AudioPlayer();
  PlayerState audioPlayerState = PlayerState.PAUSED;
  static AudioCache audioCache = AudioCache();
  String path = 'sample.mp3';

  @override
  void initState(){
    super.initState();
    audioCache = AudioCache(fixedPlayer: audioPlayer);
    audioPlayer.onPlayerStateChanged.listen((PlayerState s){
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
    await audioCache.loop(path);
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
          audioPlayerState == PlayerState.PLAYING 
            ? pauseMusic()
            : playMusic();    
        },
        icon: Icon(audioPlayerState == PlayerState.PLAYING 
          ? Icons.music_note 
          : Icons.music_off,
        ),
      ), 
    );
  }
}