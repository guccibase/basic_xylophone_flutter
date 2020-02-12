import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  play({String file, Color color}) {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            final player = AudioCache();
            player.play(file);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            play(file: 'note1.wav', color: Colors.pinkAccent),
            play(file: 'note2.wav', color: Colors.blue),
            play(file: 'note3.wav', color: Colors.teal),
            play(file: 'note4.wav', color: Colors.red),
            play(file: 'note5.wav', color: Colors.yellow),
            play(file: 'note6.wav', color: Colors.grey),
            play(file: 'note7.wav', color: Colors.purple),
          ],
        )),
      ),
    );
  }
}
