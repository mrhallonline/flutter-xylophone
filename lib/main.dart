import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: () {
                  final player = AudioCache();
                  player.play('note1.wav');
                },
                child: Container(
                  height: 50.0,
                  width: double.infinity,
                  color: Colors.red,
                ),
              ),
              FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: () {
                  final player = AudioCache();
                  player.play('note2.wav');
                },
                child: Container(
                  height: 50.0,
                  width: double.infinity,
                  color: Colors.orange,
                ),
              ),
              FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: (){
                  final player = AudioCache();
                  player.play('note3.wav');
                },
                child: Container(
                  height: 50.0,
                  width: double.infinity,
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
