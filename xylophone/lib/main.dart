import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(colorPal: Colors.red, noteNumber: 1),
                buildKey(colorPal: Colors.orange, noteNumber: 2),
                buildKey(colorPal: Colors.yellow, noteNumber: 3),
                buildKey(colorPal: Colors.green, noteNumber: 4),
                buildKey(colorPal: Colors.blue, noteNumber: 5),
                buildKey(colorPal: Colors.blue.shade900, noteNumber: 6),
                buildKey(colorPal: Colors.purple, noteNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({Color colorPal, int noteNumber}) {
    return Expanded(
      child: FlatButton(
        color: colorPal,
        onPressed: () {
          playSound(noteNumber);
        },
        child: null,
      ),
    );
  }
}
