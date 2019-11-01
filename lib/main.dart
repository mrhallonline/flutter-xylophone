import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());



class XylophoneApp extends StatelessWidget {
  void playSound(sound) {
    final player = AudioCache();
    player.play(sound);
  }

Expanded buildKey(Color rowColor, int rowSound ){
return  Expanded(
            child: Container(
            child: FlatButton(
            color: rowColor,
            onPressed: () {
              playSound('note$rowSound.wav');
                    },
              child: (null),
                ),
                  ),
              // flex: 1,
              );
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
              buildKey(Colors.green, 1),
              buildKey(Colors.red, 2),
              buildKey(Colors.orange, 3),
              buildKey(Colors.yellow, 4),
              buildKey(Colors.purple, 5),
              buildKey(Colors.indigo, 6),
              buildKey(Colors.blue, 7),
            ],
          ),
        ),
      ),
    );
  }
}
