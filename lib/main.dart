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
              buildKey(Colors.red[50], 1),
              buildKey(Colors.green[100], 2),
              buildKey(Colors.orange[200], 3),
              buildKey(Colors.blue[300], 4),
              buildKey(Colors.indigo[400], 5),
              buildKey(Colors.yellow[500], 6),
              buildKey(Colors.purple[600], 7),
              buildKey(Colors.red[700], 8),
            ],
          ),
        ),
      ),
    );
  }
}
