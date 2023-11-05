import 'package:flutter/material.dart';

import 'modelTune.dart';

class Tuneitems extends StatelessWidget {
  Tuneitems({super.key, required this.tune});

  final TuneModel tune;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          tune.playSound();
        },
        child: Container(
          alignment: Alignment.center,
          color: tune.color,
          child: Text(
            '${tune.charPiano}',
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
