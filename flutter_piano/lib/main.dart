import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  AudioCache player;

  @override
  Widget build(BuildContext context) {
    player = AudioCache(prefix: '');
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              stringPiano(1, Colors.red),
              stringPiano(2, Colors.orange),
              stringPiano(3, Colors.yellow),
              stringPiano(4, Colors.green),
              stringPiano(5, Colors.greenAccent),
              stringPiano(6, Colors.lightBlueAccent),
              stringPiano(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }

  get stringPiano => (int pos, Color color) {
        return Expanded(
            child: FlatButton(
          color: color,
          onPressed: () {
            player.play(
                "note$pos.wav"); // Don't add "assets/" because by default it automatically adds "assets/" in case of audio files
          },
          child: null,
        ));
      };
}
