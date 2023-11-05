import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel {
  final Color color;
  final String sounds;
  final String? charPiano;

  TuneModel(
      {required this.color, required this.sounds, required this.charPiano});

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sounds));
  }
}
