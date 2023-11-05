import 'package:flutter/material.dart';
import 'package:tune/tuneitems.dart';

import 'modelTune.dart';

void main() {
  runApp(
    Tune(),
  );
}

class Tune extends StatelessWidget {
  Tune({super.key});
  final List<TuneModel> tunes = [
    TuneModel(color: Colors.black, sounds: 'sound/note1.wav', charPiano: 'A'),
    TuneModel(color: Colors.white, sounds: 'sound/note2.wav', charPiano: 'B'),
    TuneModel(color: Colors.black, sounds: 'sound/note3.wav', charPiano: 'C'),
    TuneModel(color: Colors.white, sounds: 'sound/note4.wav', charPiano: 'D'),
    TuneModel(color: Colors.black, sounds: 'sound/note5.wav', charPiano: 'E'),
    TuneModel(color: Colors.white, sounds: 'sound/note6.wav', charPiano: 'F'),
    TuneModel(color: Colors.black, sounds: 'sound/note7.wav', charPiano: 'G'),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          elevation: 4,
          title: const Text(
            'Tune Piano',
          ),
        ),
        body: Column(
          children: tunes
              .map(
                (e) => Tuneitems(tune: e),
              )
              .toList(),
        ),
      ),
    );
  }
}
