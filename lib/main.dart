import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(sound) {
    final player = AudioCache();
    player.play(sound);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                  child: Container(
                    child: FlatButton(
                    color: Colors.deepOrange,
                    onPressed: () {
                      playSound('note1.wav');
                    },
                    child: (null),
                ),
                  ),
              flex: 1,
              ),
              Expanded(
                  child: Container(
                  child: FlatButton(
                    color: Colors.amber,
                    onPressed: () {
                      playSound('note2.wav');
                    },
                    child: (null),
                  ),
                ),
                flex: 1,
              ),
              Expanded(
                  child: Container(
                  child: FlatButton(
                    color: Colors.yellow,
                    onPressed: () {
                      playSound('note3.wav');
                    },
                    child: (null),
                  ),
                ),
              flex: 1,
              ),
              Expanded(
                              child: Container(
                  child: FlatButton(
                    color: Colors.green,
                    onPressed: () {
                      playSound('note4.wav');
                    },
                    child: (null),
                  ),
                ),
                flex: 1,
              ),
              Expanded(
                  child: Container(
                  child: FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      playSound('note5.wav');
                    },
                    child: (null),
                  ),
                ),
                flex: 1,
              ),
              Expanded(
                  child: Container(
                  child: FlatButton(
                    color: Colors.indigo,
                    onPressed: () {
                      playSound('note6.wav');
                    },
                    child: (null),
                  ),
                ),
                flex: 1,
              ),
              Expanded(
                  child: Container(
                  child: FlatButton(
                    color: Colors.blueGrey,
                    onPressed: () {
                      playSound('note7.wav');
                    },
                    child: (null),
                  ),
                ),
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
