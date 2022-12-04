import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              generateButton(color: Colors.red, audioFileName: 'note1.wav'),
              generateButton(color: Colors.orange, audioFileName: 'note2.wav'),
              generateButton(color: Colors.yellow, audioFileName: 'note3.wav'),
              generateButton(color: Colors.green, audioFileName: 'note4.wav'),
              generateButton(color: Colors.teal, audioFileName: 'note5.wav'),
              generateButton(color: Colors.blue, audioFileName: 'note6.wav'),
              generateButton(color: Colors.purple, audioFileName: 'note7.wav'),
            ],
          ),
        ),
      ),
    );
  }

  void playSound(String fileName) {
    final player = AudioCache();
    player.play(fileName);
  }

  Widget generateButton({MaterialColor color, String audioFileName}) {
    return Expanded(
      child: TextButton(
        child: Container(),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: () {
          playSound(audioFileName);
        },
      ),
    );
  }
}
