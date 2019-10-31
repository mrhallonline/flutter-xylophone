import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound (sound){
    final player = AudioCache();
    player.play(sound);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              FlatButton(
                padding: EdgeInsets.all(0),              
                color: Colors.red,
                onPressed: () {
                  playSound('note1.wav');
                },
              ),
              FlatButton(
                padding: EdgeInsets.all(0),
                color: Colors.orange,
                onPressed: () {
                  playSound('note2.wav');
                },
              ),
              FlatButton(
                  color: Colors.yellow,
                padding: EdgeInsets.all(0),
                onPressed: (){
                  playSound('note3.wav');
                },
                child: Container(
                  height: 50.0,
                  width: double.infinity,
                ),
              ),
              FlatButton(
                  color: Colors.green,
                padding: EdgeInsets.all(0),
                onPressed: (){
                  playSound('note4.wav');
                },
                child: Container(
                  height: 50.0,
                  width: double.infinity,
                ) ,
              ),
              FlatButton(
                  color: Colors.blue,
                padding: EdgeInsets.all(0),
                onPressed: (){
                  playSound('note5.wav');
                },
                child: Container(
                  height: 50.0,
                  width: double.infinity,
                ),
              ),
              FlatButton(
                  color: Colors.indigo,
                padding: EdgeInsets.all(0),
                onPressed: (){
                  playSound('note6.wav');
                },
                child: Container(
                  height: 50.0,
                  width: double.infinity,
                ),
              ),
              FlatButton(
                  color: Colors.purple,
                padding: EdgeInsets.all(0),
                onPressed: (){
                  playSound('note7.wav');
                },
                child: Container(
                  height: 50.0,
                  width: double.infinity,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
