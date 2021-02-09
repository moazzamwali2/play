import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main () {
  runApp(Piano()
  );
}

class Piano extends StatelessWidget {
  void playSound( int soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  void playSound2( int soundNum1) {
    final player1 = AudioCache();
    player1.play('note$soundNum1.mp3');
  }

  Expanded buildKey ({Color color, int soundNum}) {
    return Expanded(
      child: FlatButton(
        minWidth: double.infinity,
        color: color,
        onPressed: () {
          playSound(soundNum);
        },
      ),);
  }

  Expanded buildKey1 ({Color color, int soundNum1}) {
    return Expanded(
      child: FlatButton(
        minWidth: double.infinity,
        color: color,
        onPressed: () {
          playSound2(soundNum1);
        },
      ),);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Column(
          children: <Widget>[
            buildKey(color: Colors.tealAccent, soundNum: 1),
            buildKey(color: Colors.pinkAccent, soundNum: 2),
            buildKey(color: Colors.purpleAccent, soundNum: 3),
            buildKey(color: Colors.orangeAccent, soundNum: 4),
            buildKey(color: Colors.greenAccent, soundNum: 5),
            buildKey(color: Colors.blueAccent, soundNum: 6),
            buildKey(color: Colors.redAccent, soundNum: 7),
            buildKey1(color: Colors.greenAccent, soundNum1 : 8),
          ],
        ),
      ),
    );
  }
}
