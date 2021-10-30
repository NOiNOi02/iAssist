// ignore_for_file: prefer_const_constructors

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AudioFile extends StatefulWidget{
  final AudioPlayer advancedPlayer;
  const AudioFile({Key? key, required this.advancedPlayer}) : super(key: key);
  

  @override 
  _AudioFileState createState() => _AudioFileState();
}

class _AudioFileState extends State<AudioFile> {
    final String path = 'assets/sample.mp3';
    bool isPlaying = false;
    bool isPaused = false;

    @override
    void initState(){
      super.initState();
      widget.advancedPlayer.setUrl(path);
    }

    Widget btnStart(){
      return IconButton(
        icon: isPlaying==false ? Icon(Icons.music_note) : Icon(Icons.music_off),
        onPressed: () async {
          if(isPlaying == false){
            await widget.advancedPlayer.play(path, isLocal: true);
            setState(() {
              isPlaying=true;
            });
          } else if(isPlaying == true){
            await widget.advancedPlayer.pause();
            setState(() {
              isPlaying = false;
            });
          }
        },
      );
    }
    
    @override 
    Widget build(BuildContext context){
      return Tab(
        icon: btnStart(),
        text: 'Sounds',
      );
    }
  }