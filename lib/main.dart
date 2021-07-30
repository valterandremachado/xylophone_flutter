import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: XylophoneMainView(),
        ),
      ),
    ),
  );
}

class XylophoneMainView extends StatelessWidget {
  void playNote(int noteNumeber) {
    final player = AudioCache();
    player.play('note$noteNumeber.wav');
  }

  Expanded buildButton(int noteNumber, Color noteColor) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 1, 10, 1),
        child: TextButton(
          onPressed: () {
            playNote(noteNumber);
          },
          style: TextButton.styleFrom(backgroundColor: noteColor),
          child: Text(''),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisSize: MainAxisSize.max,

        children: [
          buildButton(1, Colors.red),
          buildButton(2, Colors.orange),
          buildButton(3, Colors.yellow),
          buildButton(4, Colors.green),
          buildButton(5, Colors.teal),
          buildButton(6, Colors.blue),
          buildButton(7, Colors.purple),
        ],
      ),
    );
  }
}
